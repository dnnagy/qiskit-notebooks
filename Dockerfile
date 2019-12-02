FROM nagyd96/jupyter-notebook-base:latest
USER root

# there was a problem installing newer version
RUN python3 -m pip install qiskit==0.10.5

# Switch back to NB_USER
USER $NB_USER
ENTRYPOINT cd $WORKDIR && jupyter notebook --ip=0.0.0.0 --no-browser
