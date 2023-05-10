package dsm.com.br.projeto1.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import dsm.com.br.projeto1.model.Contato;

public interface Contatos extends JpaRepository<Contato, Long> {
    
}
