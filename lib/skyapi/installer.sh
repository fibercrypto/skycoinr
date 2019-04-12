sh -c 'echo "deb http://cran.rstudio.com/bin/linux/ubuntu trusty/" >> /etc/apt/sources.list'
gpg --keyserver keyserver.ubuntu.com --recv-key E084DAB9
gpg -a --export E084DAB9 | sudo apt-key add -
apt-get update
sudo sudo sh -c 'echo "deb http://cran.rstudio.com/bin/linux/ubuntu trusty/" >> /etc/apt/sources.list'
gpg --keyserver keyserver.ubuntu.com --recv-key E084DAB9
gpg -a --export E084DAB9 | sudo apt-key add -
apt-get update
apt-get -y install r-base libapparmor1 libcurl4-gnutls-dev libxml2-dev libssl-dev gdebi-core
apt-get install libcairo2-dev
apt-get install libxt-dev
apt-get install git-core

/bin/dd if=/dev/zero of=/var/swap.1 bs=1M count=1024
/sbin/mkswap /var/swap.1
/sbin/swapon /var/swap.1
sh -c 'echo "/var/swap.1 swap swap defaults 0 0 " >> /etc/fstab'

 sh -c "R -e \"install.packages('devtools', repos='http://cran.rstudio.com/')\""
 sh -c "R -e \"install.packages('Rcpp', repos='http://cran.rstudio.com/')\""
 sh -c "R -e \"install.packages('RcppEigen', repos='http://cran.rstudio.com/')\""
 sh -c "R -e \"install.packages('ggplot2', repos='http://cran.rstudio.com/')\""
 sh -c "R -e \"install.packages('Cairo', repos='http://cran.rstudio.com/')\""
 sh -c "R -e \"install.packages('evaluate', repos='http://cran.rstudio.com/')\""
 sh -c "R -e \"install.packages('formatR', repos='http://cran.rstudio.com/')\""
 sh -c "R -e \"install.packages('highr', repos='http://cran.rstudio.com/')\""
 sh -c "R -e \"install.packages('markdown', repos='http://cran.rstudio.com/')\""
 sh -c "R -e \"install.packages('yaml', repos='http://cran.rstudio.com/')\""
 sh -c "R -e \"install.packages('htmltools', repos='http://cran.rstudio.com/')\""
 sh -c "R -e \"install.packages('knitr', repos='http://cran.rstudio.com/')\""
 sh -c "R -e \"install.packages('rmarkdown', repos='http://cran.rstudio.com/')\""
 sh -c "R -e \"install.packages('RColorBrewer', repos='http://cran.rstudio.com/')\""
 sh -c "R -e \"source('http://bioconductor.org/biocLite.R'); biocLite('BiocParallel')\""
 sh -c "R -e \"source('http://bioconductor.org/biocLite.R'); biocLite('Biobase')\""
 sh -c "R -e \"source('http://bioconductor.org/biocLite.R'); biocLite('EBSeq')\""
 sh -c "R -e \"source('http://bioconductor.org/biocLite.R'); biocLite('monocle')\""
 sh -c "R -e \"source('http://bioconductor.org/biocLite.R'); biocLite('sincell')\""
 sh -c "R -e \"source('http://bioconductor.org/biocLite.R'); biocLite('scde')\""
 sh -c "R -e \"source('http://bioconductor.org/biocLite.R'); biocLite('scran')\""
 sh -c "R -e \"source('http://bioconductor.org/biocLite.R'); biocLite('scater')\""
 sh -c "R -e \"devtools::install_github('kdkorthauer/scDD')\""

wget https://download2.rstudio.org/rstudio-server-0.99.903-amd64.deb

sh gdebi rstudio-server-0.99.903-amd64.debapt-get -y install r-base libapparmor1 libcurl4-gnutls-dev libxml2-dev libssl-dev gdebi-core
sh apt-get install libcairo2-dev
sh apt-get install libxt-dev
sh apt-get install git-core

sh /bin/dd if=/dev/zero of=/var/swap.1 bs=1M count=1024
sh /sbin/mkswap /var/swap.1
sh /sbin/swapon /var/swap.1
sh sh -c 'echo "/var/swap.1 swap swap defaults 0 0 " >> /etc/fstab'

sh -c "R -e \"install.packages('devtools', repos='http://cran.rstudio.com/')\""
sh -c "R -e \"install.packages('Rcpp', repos='http://cran.rstudio.com/')\""
sh -c "R -e \"install.packages('RcppEigen', repos='http://cran.rstudio.com/')\""
sh -c "R -e \"install.packages('ggplot2', repos='http://cran.rstudio.com/')\""
sh -c "R -e \"install.packages('Cairo', repos='http://cran.rstudio.com/')\""
sh -c "R -e \"install.packages('evaluate', repos='http://cran.rstudio.com/')\""
sh -c "R -e \"install.packages('formatR', repos='http://cran.rstudio.com/')\""
sh -c "R -e \"install.packages('highr', repos='http://cran.rstudio.com/')\""
sh -c "R -e \"install.packages('markdown', repos='http://cran.rstudio.com/')\""
sh -c "R -e \"install.packages('yaml', repos='http://cran.rstudio.com/')\""
sh -c "R -e \"install.packages('htmltools', repos='http://cran.rstudio.com/')\""
sh -c "R -e \"install.packages('knitr', repos='http://cran.rstudio.com/')\""
sh -c "R -e \"install.packages('rmarkdown', repos='http://cran.rstudio.com/')\""
sh -c "R -e \"install.packages('RColorBrewer', repos='http://cran.rstudio.com/')\""
sh -c "R -e \"source('http://bioconductor.org/biocLite.R'); biocLite('BiocParallel')\""
sh -c "R -e \"source('http://bioconductor.org/biocLite.R'); biocLite('Biobase')\""
sh -c "R -e \"source('http://bioconductor.org/biocLite.R'); biocLite('EBSeq')\""
sh -c "R -e \"source('http://bioconductor.org/biocLite.R'); biocLite('monocle')\""
sh -c "R -e \"source('http://bioconductor.org/biocLite.R'); biocLite('sincell')\""
sh -c "R -e \"source('http://bioconductor.org/biocLite.R'); biocLite('scde')\""
sh -c "R -e \"source('http://bioconductor.org/biocLite.R'); biocLite('scran')\""
sh -c "R -e \"source('http://bioconductor.org/biocLite.R'); biocLite('scater')\""
sh -c "R -e \"devtools::install_github('kdkorthauer/scDD')\""
