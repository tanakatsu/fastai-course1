if [ -e .jupyter/jupyter_notebook_config.py ]; then
  rm .jupyter/jupyter_notebook_config.py
fi

jupyter notebook --generate-config
jupass=`python -c "from notebook.auth import passwd; print(passwd())"`
cd ~
echo "c.NotebookApp.password = u'"$jupass"'" >> .jupyter/jupyter_notebook_config.py
echo "c.NotebookApp.ip = '*'
c.NotebookApp.open_browser = False" >> .jupyter/jupyter_notebook_config.py
