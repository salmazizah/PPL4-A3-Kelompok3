import MemberCard from "./MemberCard";

export default function MemberList({members}){
    return (
        <>
        <div className="row">
        {
            members.length === 0 ? <h3>No Members</h3> : members.data.map((member)=> {
                //<div key={member.id}>
                return (
                    <div className="col-md-3">
                    <MemberCard data={member}/>
                    </div>
                );
                //</div>
            })
            };
        </div>
        </>
    );
}