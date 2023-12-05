import { useEffect, useState } from "react";
import axios from "axios";
import "./Filter.css";

function Filter({ name, type, props, updateFilterParams }) {
  const [filterList, setFilterList] = useState([]);

  useEffect(() => {
    axios
      .get(`${import.meta.env.VITE_BACKEND_URL}/api/${type}`)
      .then((res) => setFilterList(res.data))
      .catch((err) => console.error(err));
  }, []);

  return (
    <div className="containerFilter">
      <div className={type}>
        <label htmlFor={type}>{name}</label>

        <select
          className="select"
          name=""
          id=""
          onChange={(e) => updateFilterParams(e.target.value, type)}
        >
          <option value="0">Selection par Hopital</option>
          {filterList.map((nam) => {
            return (
              <option key={nam.id} value={nam.id}>
                {nam[props]}
              </option>
            );
          })}
        </select>
      </div>
    </div>
  );
}
export default Filter;
