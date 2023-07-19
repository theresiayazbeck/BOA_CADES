import datetime as dt
import logging
import shutil
import time
from pathlib import Path
import click

from boa import (
    WrappedJobRunner,
    get_experiment,
    get_scheduler,
    load_yaml,
    make_experiment_dir,
    scheduler_to_json_file,
)

from elm_wrapper import ELMWrapper

@click.command()
@click.option(
    "-f",
    "--config_file",
    type=click.Path(exists=True, dir_okay=False, path_type=Path),
    default=Path(__file__).resolve().parent.parent.parent / "config_files/opt_model_config.yml",
    help="Path to configuration YAML file.",
)

def main(config_file):
    """This is my docstring
    Args:
        config (os.PathLike): Path to configuration YAML file
    """
    run(config_file)

def run(config_file):
    start = time.time()
    
    config = load_yaml(config_file) # Read experiment config

    experiment_dir = make_experiment_dir(
        config["optimization_options"]["output_dir"],None,
        config["optimization_options"]["experiment"]["name"]
    )

    # Copy the experiment config to the experiment directory
    shutil.copyfile(config_file, experiment_dir / Path(config_file).name)

    log_format = "%(levelname)s %(asctime)s - %(message)s"

    logging.basicConfig(
        filename=Path(experiment_dir) / "optimization.log",
        filemode="w",
        format=log_format,
        level=logging.DEBUG,
    )

    logging.getLogger().addHandler(logging.StreamHandler())
    logger = logging.getLogger(__file__)

    logger.info("Start time: %s", dt.datetime.now().strftime("%Y%m%dT%H%M%S"))

    wrapper = ELMWrapper(
        ex_settings=config["optimization_options"],
        model_settings=config["model_options"],
        experiment_dir=experiment_dir,
    )

    experiment = get_experiment(config, WrappedJobRunner(wrapper=wrapper), wrapper)

    scheduler = get_scheduler(experiment, config=config)

    scheduler.run_all_trials()

    logging.info("\nTrials completed! Total run time: %d", time.time() - start)
    scheduler_to_json_file(scheduler, experiment_dir / "scheduler.json")
    return scheduler


if __name__ == "__main__":
    main()

