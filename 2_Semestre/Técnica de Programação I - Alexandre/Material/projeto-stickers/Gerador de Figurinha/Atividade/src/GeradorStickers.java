import javax.imageio.ImageIO;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.awt.Graphics2D;

public class GeradorStickers {
    
    public void GerarSticker() throws IOException {
        //Leitura da imagem "Local"
        BufferedImage imagemOriginal = ImageIO.read(new File("entrada/filme.jpg"));
        //Criar uma nova imagem com tranparencia e com tamanho novo
        int largura = imagemOriginal.getWidth();
        int altura = imagemOriginal.getHeight();
        int novaAltura = altura + 200;
        BufferedImage novaImagem = new BufferedImage(largura, novaAltura, BufferedImage.TYPE_INT_ARGB);

        //Copiar a imagem original para a nova imagem (Em memoria)
        Graphics2D graphics = (Graphics2D) novaImagem.getGraphics();
        graphics.drawImage(imagemOriginal, 0, 0, null );
        //Escrever uma mensagem na nova imagem
        graphics.drawString("TOP 250 FILMES", 200, novaAltura);

        //Escrever a nova imagem em um arqivo
        ImageIO.write(novaImagem, "png", new File("saida/figurinha.png"));
    }

    public static void main (String[] args) throws IOException{

    }
}
