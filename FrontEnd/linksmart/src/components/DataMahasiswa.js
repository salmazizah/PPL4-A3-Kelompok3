import React, { useEffect, useState } from 'react';
import axios from 'axios';
import { Button, Modal, ModalBody, ModalFooter, ModalTitle, Form, Row } from 'react-bootstrap';
import ModalHeader from 'react-bootstrap/esm/ModalHeader';
export default function DataMahasiswa() {

    const [mahasiswa, setMahasiswa] = useState([]);

    const [show, setShow] = useState(false);
    const handleClose = () => setShow(false);
    const handleShow = () => setShow(true);

    const [showEdit, setShowEdit] = useState(false);
    const handleCloseEdit = () => setShowEdit(false);
    const handleShowEdit = (mahasiswa) => {
        setIdEdit(mahasiswa.id);
        setNamaEdit(mahasiswa.attributes.nama);
        setNimEdit(mahasiswa.attributes.nim);
        setShowEdit(true);
    }

    const [nim, setNim] = useState("");
    const [nama, setNama] = useState("");
    const [nimEdit, setNimEdit] = useState('');
    const [namaEdit, setNamaEdit] = useState('');
    const [idEdit, setIdEdit] = useState('');

    const handleChangeNim = event => {
        setNim(event.target.value);
    }

    const handleChangeNama = event => {
        setNamaEdit(event.target.value);
        setNama(event.target.value);
    }

    const data = {
        nim,
        nama
    }

    const dataEdit = {
        nim: nimEdit,
        nama: namaEdit
    }

    const getData = async () => {
        try {
            const response = await axios.get('http://localhost:1337/api/mahasiswas').then((res) => res.data);
            setMahasiswa(response.data);
        } catch (error) {
            alert(error);
        }
    }

    const tambah = () => {
        console.log(data);
        axios.post('http://localhost:1337/api/mahasiswas', {data}).then(res => {
            alert('Berhasil menyimpan');
            handleClose();
            getData();
        })
    }

    const saveEdit = () => {
        console.log(dataEdit);
        axios.put('http://localhost:1337/api/mahasiswas/'+idEdit+'', {data: dataEdit}).then(res => {
            alert('Berhasil mengubah data');
            handleCloseEdit();
            getData();
        })
    }

    const deleteMhs = () => {
        console.log(dataEdit);
        axios.delete('http://localhost:1337/api/mahasiswas/'+idEdit+'').then(res => {
            alert('Berhasil menghapus data');
            handleCloseEdit();
            getData();
        })
    }

    useEffect(() => {
        getData()
    }, [])
    return (
        <div className='containter' style={{ padding: 'auto' }}>
            <h5 className='mx-auto'>Data Mahasiswa</h5>
            <table className="table">
                <thead>
                    <tr>
                        <th scope="col">NIM</th>
                        <th scope="col">NAMA</th>
                    </tr>
                </thead>
                <tbody>
                    {
                        mahasiswa.map((mahasiswa) => {
                            return (
                                <tr key={mahasiswa.attributes.nim} onClick={() => handleShowEdit(mahasiswa)}>
                                    <td id={mahasiswa.attributes.nim}>{mahasiswa.attributes.nim}</td>
                                    <td id={mahasiswa.attributes.nama}>{mahasiswa.attributes.nama}</td>
                                </tr>
                            );
                        })
                    }
                </tbody>
            </table>
            <button className='btn btn-primary' type='button' onClick={handleShow}>Tambah</button>
            <Modal show={show} onHide={handleClose}>
                <Modal.Header closeButton>
                    <Modal.Title>Tambah mahasiswa</Modal.Title>
                </Modal.Header>
                <Modal.Body>
                    <Form.Label htmlFor="nim">NIM</Form.Label>
                    <Form.Control
                        type="number"
                        name='nim'
                        onChange={handleChangeNim}
                    />
                    <Form.Label htmlFor="nama">Nama</Form.Label>
                    <Form.Control
                        type="text"
                        name='nama'
                        onChange={handleChangeNama}
                    />
                </Modal.Body>
                <Modal.Footer>
                    <Button variant="secondary" onClick={handleClose}>
                        Close
                    </Button>
                    <Button variant="primary" onClick={tambah}>
                        Save Changes
                    </Button>
                </Modal.Footer>
            </Modal>
            <Modal show={showEdit} onHide={handleCloseEdit}>
                <Modal.Header closeButton>
                    <Modal.Title>Detail mahasiswa</Modal.Title>
                </Modal.Header>
                <Modal.Body>
                    <Form.Label htmlFor="nim">NIM</Form.Label>
                    <Form.Control
                        type="number"
                        name='nim'
                        disabled
                        value={nimEdit}
                    />
                    <Form.Label htmlFor="nama">Nama</Form.Label>
                    <Form.Control
                        type="text"
                        name='nama'
                        value={namaEdit}
                        onChange={handleChangeNama}
                    />
                </Modal.Body>
                <Modal.Footer>
                    <Button variant="secondary" onClick={deleteMhs}>
                        Delete
                    </Button>
                    <Button variant="primary" onClick={saveEdit}>
                        Save Changes
                    </Button>
                </Modal.Footer>
            </Modal>
        </div>
    );
}