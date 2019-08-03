module PackagesHelper

  def get_package
     {
        "Package" => "A3", "Title"=>"Accurate, Adaptable, and Accessible Error Metrics for Predictive
        Models", "Description"=>"Supplies tools for tabulating and analyzing the results of predictive models. The methods employed are applicable to virtually any predictive model and make comparisons between different methodologies straightforward.",
        "Version" => "1.0.0", "Date"=>"2015-08-15",
        "Author"=>"Scott Fortmann", "Maintainer"=>"Scott Fortmann <scottfr@berkeley.edu>",
        "Date/Publication"=>"2015-08-16 23:05:52"
      }
  end

  def get_package_desc
    {
        "Package" => "A3", "Title"=>"Accurate, Adaptable, and Accessible Error Metrics for Predictive
        Models", "Description"=>"Supplies tools for tabulating and analyzing the results of predictive models. The methods employed are applicable to virtually any predictive model and make comparisons between different methodologies straightforward.",
        "Version" => "1.0.0", "Date"=>"2015-08-15",
        "Author"=>"Scott Fortmann", "Maintainer"=>"Scott Fortmann <scottfr@berkeley.edu>",
        "Date/Publication"=>"2015-08-16 23:05:52"
    }

  end

  def get_packages
    [{"Package"=>"A3\n", "Version"=>"1.0.0\n", "Depends"=>"R (>= 2.15.0), xtable, pbapply\n", "Suggests"=>"randomForest, e1071\n", "License"=>"GPL (>= 2)\n", "NeedsCompilation"=>"no\n"}, {"Package"=>"abbyyR\n", "Version"=>"0.5.5\n", "Depends"=>"R (>= 3.2.0)\n", "Imports"=>"httr, XML, curl, readr, plyr, progress\n", "Suggests"=>"testthat, rmarkdown, knitr (>= 1.11), lintr\n", "License"=>"MIT + file LICENSE\n", "NeedsCompilation"=>"no\n"}, {"Package"=>"abc\n", "Version"=>"2.1\n", "Depends"=>"R (>= 2.10), abc.data, nnet, quantreg, MASS, locfit\n", "License"=>"GPL (>= 3)\n", "NeedsCompilation"=>"no\n"}, {"Package"=>"abc.data\n", "Version"=>"1.0\n", "Depends"=>"R (>= 2.10)\n", "License"=>"GPL (>= 3)\n", "NeedsCompilation"=>"no\n"}]
  end

end
