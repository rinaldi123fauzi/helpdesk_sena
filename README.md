# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

--TODO---

* Diubah label status approval berjenjang (SOLVED)
- low diubah ke HO
- medium diubah ke KADIV

* Diubah sorting tiket (role teknisi)
- prioritas status inprogress

* Diubah counting ticket open ke blink

* dashboard di JavaScript
=======================
array_teknisi = [];
for (let i = 0; i < data['grafik_teknisi']['closed'].length; i++) {
  const element = data['grafik_teknisi']['closed'][i];
  const teknisi = element['teknisi'];
  const durasi = element['durasi'];
  array_teknisi.push(teknisi);
}
          
let teknisi_final = array_teknisi.filter(onlyUnique);

result_teknisi = [];
for (let i = 0; i < teknisi_final.length; i++) {
  const element = teknisi_final[i];
  for (let i = 0; i < data['grafik_teknisi']['closed'].length; i++) {
    const element = data['grafik_teknisi']['closed'][i];
  }
  result_teknisi.push(element);
}
          
result_final = { ...result_teknisi }

console.log(result_final);
=========================
