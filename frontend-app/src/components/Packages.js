import React from 'react';
import { MDBDataTable } from 'mdbreact';

const PackageList = (list) => {

  const data = {
    columns: [

      {
        label: 'SN',
        field: 'id',
        sort: 'asc'
      },
      {
        label: 'Name',
        field: 'name',
        sort: 'asc',
        width: 150
      },
      {
        label: 'Version',
        field: 'version',
        sort: 'asc',
        width: 270
      },
      {
        label: 'Date/Publication',
        field: 'date_of_publication',
        sort: 'asc',
        width: 200
      },
      {
        label: 'Title',
        field: 'title',
        sort: 'asc',
        width: 100
      },
      {
        label: 'Description',
        field: 'description',
        sort: 'asc',
        width: 150
      },
      {
        label: 'Author',
        field: 'author',
        sort: 'asc',
        width: 100
      },
      {
        label: 'Maintainer',
        field: 'maintainer',
      }
    ],
    rows: list.rpackages
  };

  return (
    <MDBDataTable
      striped
      data={data}
      sortable={false}
      responsive
      searchLabel="Search Package"
      infoLabel={["Showing", "to", "of", "packages"]}
    />
  );
}

export default PackageList;
