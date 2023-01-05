import React from 'react';
import ReactDOM from 'react-dom';


//const URI = 'http://localhost:8000/blogs/'
const URI = '/indexReact'


function ShowProducts() {

    const [blogs, setBlog] = useState([])
    useEffect( ()=>{
        getBlogs()
    },[])

    //procedimineto para mostrar todos los blogs
    const getBlogs = async () => {
        const res = await axios.get(URI)
        setBlog(res.data)
    }

    //procedimineto para eliminar un blog
    const deleteBlog = async (id) => {
       await axios.delete(`${URI}${id}`)
       getBlogs()
    }

    return (
       
        <div className='container'>
        <div className='row'>
            <div className='col'>
                 <table className='table'>
                    <thead className='table-primary'>
                        <tr>
                            <th>Title</th>
                            <th>Content</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        { blogs.map ( (blog) => (
                            <tr key={ blog.id}>
                                <td> { blog.codigo_barras } </td>
                                <td> { blog.descripcion } </td>
                                <td>
                                    <button onClick={ ()=>deleteBlog(blog.id) } className='btn btn-danger'><i className="fas fa-trash-alt"></i></button>
                                </td>
                            </tr>
                        )) }
                    </tbody>
                </table>
            </div>    
        </div>
    </div>
          
    );
}

export default ShowProducts;

if (document.getElementById('showProducts')) {
    ReactDOM.render(<ShowProducts />, document.getElementById('showProducts'));
}
