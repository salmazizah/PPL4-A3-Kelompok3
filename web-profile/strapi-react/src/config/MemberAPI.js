import api from ".";

export default {
    find: () => api.get("/api/members?populate=*").then((res) => res.data),
    detail: (id) => api.get(`/api/members/${id}`).then((res) => res.data),
}