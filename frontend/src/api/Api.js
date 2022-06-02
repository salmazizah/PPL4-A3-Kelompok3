import axios from 'axios';
var base_url = 'https://linksmart-pln.herokuapp.com/api/';
export default {

    //Oky
    getJabatan: () => axios.get(base_url + 'jabatans?populate=*'),
    getPenguji: () => axios.get(base_url + 'pengujis?populate=*'),
    getPengujiById: (id) => axios.get(base_url + 'pengujis/?populate=*'),
    addFitProper: (data) =>
        axios.post(base_url + 'fit-propers', {
            data: {
                tanggalFitProper: data.tanggalFitProper,
                proyeksi: data.proyeksi.value,
                jenis: data.jenis,
                idPeserta: data.idPeserta,
                pengujis: data.pengujis.value,
                jenjang_proyeksi: data.jenjang_proyeksi.value
            }
        }),
    getFitProper: () => axios.get(base_url + 'fit-propers?populate=*'),
    getFitProperById: (id) => axios.get(base_url + 'fit-propers/' + id + '?populate=*'),
    addNilaiKc: (nilai, fitProper) =>
        axios.post(base_url + 'key-competencies', {
            data: {
                enthusiasthic: nilai.enthusiasthic,
                creative: nilai.creative,
                partnership: nilai.partnership,
                bsn_acumen: nilai.bsn_acumen,
                cust_focus: nilai.cust_focus,
                empowering: nilai.empowering,
                driving_execution: nilai.driving_execution,
                nilai_kc: fitProper.nama.value,
                penguji: fitProper.penguji.value
            }
        }),
    addNilaiPe: (nilai, fitProper) =>
        axios.post(base_url + 'personal-endurances', {
            data: {
                internal: nilai.internal,
                external: nilai.external,
                nilai_pe: fitProper.nama.value,
                penguji: fitProper.penguji.value
            }
        }),
    addNilaiPj: (nilai, fitProper) =>
        axios.post(base_url + 'proyeksi-jabatans', {
            data: {
                pemasaran: nilai.pemasaran,
                keteknisan: nilai.keteknisian,
                k3l: nilai.k3l,
                kontribusi_kpi: nilai.kontribusi_kpi,
                nilai_pj: fitProper.nama.value,
                penguji: fitProper.penguji.value
            }
        }),
    getNilaiKc: () => axios.get(base_url + 'key-competencies?populate=*'),
    getNilaiPe: () => axios.get(base_url + 'personal-endurances?populate=*'),
    getNilaiPj: () => axios.get(base_url + 'proyeksi-jabatans?populate=*'),
}