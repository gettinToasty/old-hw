import React, { Component } from 'react';

const GiphysIndex = ({giphys}) => {
  console.log(giphys);
  return (
    <ul>
      {giphys.map((giphy, i) => (
        <li key={i}><img src={giphy.images.fixed_height.url} /></li>
      ))}
    </ul>
  );
};

export default GiphysIndex;
