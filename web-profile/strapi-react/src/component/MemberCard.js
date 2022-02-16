export default function MemberCard({data}){
    return (
        <div className="card mb-5">
            <img src="https://i.pinimg.com/564x/6d/69/d4/6d69d40d8feb76f70914d2dab645171a.jpg"
            className="card-img-top" alt="..."/>
        <div className="card-body">
            <h6 className="card-title">{data.attributes.Name}</h6>
            <p className="card-text">{data.attributes.NIM}</p>
            
            <a href="#" className="btn btn-primary" style={{backgroundColor: '#4caf50'}}>Details</a>
        </div>
        </div>
    )
}