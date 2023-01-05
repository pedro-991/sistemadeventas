import React, { Component } from 'react';
import ReactDOM from 'react-dom';


const baseUrl = "http://localhost/MDclonado/sistema_ventas_laravel/public";

export default class Producto extends Component {

    constructor(props){
      super(props);
      this.state = {
        producto:[]
      }
    }

    componentDidMount(){

      axios.get(baseUrl+'/indexReact').then(response=>{
        this.setState({producto:response.data})
      }).catch(error=>{
        alert("Error "+error)
      })

    }

    render() {
        return (
          <div class="container">
            <br/>
            <h3>Laravel y React APIRest</h3>
            <hr/>

            <table class="table table-bordered order-table ">
              <thead>
                <tr>
                  <th>Codigo</th>
                  <th>Descripcion</th>
                  <th>Precio</th>
                </tr>
              </thead>
              <tbody id="bodytable">
                  {this.renderList()}
              </tbody>
            </table>

          </div>
        );
    }

    renderList(){

      return this.state.producto.map((data)=>{

        return(
          <tr>
            <td>{data.codigo_barras}</td>
            <td>{data.descripcion}</td>
            <td>{data.precio_venta}</td>
          </tr>
        )

      })

    }
}

if (document.getElementById('showProducts')) {
    ReactDOM.render(<Producto />, document.getElementById('showProducts'));
}
