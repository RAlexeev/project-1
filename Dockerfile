FROM ralexeev/sdk-nrf:latest

SHELL ["/bin/bash", "-c"]

WORKDIR /workdir/app

COPY . /workdir/app

RUN source /workdir/ncs/zephyr/zephyr-env.sh && west build -b nrf52840dk_nrf52840
