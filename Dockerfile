FROM nagyd96/jupyter-notebook-base:latest

USER root
RUN python3 -m pip install qiskit

USER $NB_USER
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--no-browser"]
