FROM nagyd96/jupyter-notebook-base:latest

ARG NB_USER=nagyd96
USER root

# there was a problem installing newer version
RUN python3 -m pip install qiskit==0.10.5

USER $NB_USER
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--no-browser"]
