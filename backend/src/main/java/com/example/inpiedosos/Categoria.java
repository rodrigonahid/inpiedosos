package com.example.inpiedosos;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Categoria {

  @Id
  @GeneratedValue(strategy=GenerationType.AUTO)
  private Long id;
  private String categoria;
  private String codigo;
  private String titulo;
  private String descricao;

  protected Categoria () {}

  public Categoria(String categoria, String codigo, String titulo, String descricao ) {
    this.categoria = categoria;
    this.codigo = codigo;
    this.titulo = titulo;
    this.descricao = descricao;
  }

  @Override
  public String toString() {
    return String.format(
        "Categoria[id=%d, categoria='%s', codigo='%s', titulo='%s', descricao='%s']",
        id, categoria, codigo, titulo, descricao);
  }

  public Long getId() {
    return id;
  }

  public String getCategoria() {
    return categoria;
  }

  public void setCategoria(String categoria) {
    this.categoria = categoria;
  }

  public String getCodigo() {
    return codigo;
  }

  public void setCodigo(String codigo) {
    this.codigo = codigo;
  }

  public String getTitulo() {
    return titulo;
  }

  public String getDescricao() {
    return descricao;
  }
}
