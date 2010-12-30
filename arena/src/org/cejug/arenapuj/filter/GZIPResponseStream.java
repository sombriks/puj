package org.cejug.arenapuj.filter;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.zip.GZIPOutputStream;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;


/**
 *
 * @see http://onjava.com/pub/a/onjava/2003/11/19/filters.html
 *
 */
public class GZIPResponseStream extends ServletOutputStream {
	
	/** ByteArrayOutputStream. */ 
	protected ByteArrayOutputStream baos = null;
	/** GZIP stream. */
	protected GZIPOutputStream gzipstream = null;
	/** Flag closed. */
	protected boolean closed = false;
	/** Response. */
	protected HttpServletResponse response = null;
	/** Servlet output. */
	protected ServletOutputStream output = null;

	/**
	 * Inicializa atributos.
	 * @param response HttpServletResponse.
	 * @throws IOException
	 */
	public GZIPResponseStream(HttpServletResponse response) throws IOException {
		super();
		closed = false;
		this.response = response;
		this.output = response.getOutputStream();
		baos = new ByteArrayOutputStream();
		gzipstream = new GZIPOutputStream(baos);
	}

	/**
	 * Fecha o stream.
	 */
	public void close() throws IOException {
		if (closed) {
			throw new IOException("This output stream has already been closed");
		}
		gzipstream.finish();

		byte[] bytes = baos.toByteArray();

		response.addHeader("Content-Length", Integer.toString(bytes.length));
		response.addHeader("Content-Encoding", "gzip");
		output.write(bytes);
		output.flush();
		output.close();
		closed = true;
	}

	/**
	 * Faz o flush no stream.
	 */
	public void flush() throws IOException {
		if (closed) {
			throw new IOException("Cannot flush a closed output stream");
		}
		gzipstream.flush();
	}

	/**
	 * Escreve os bytes para output.
	 * @param b int
	 */
	public void write(int b) throws IOException {
		if (closed) {
			throw new IOException("Cannot write to a closed output stream.");
		}
		gzipstream.write((byte) b);
	}

	/**
	 * Escreve os bytes para output.
	 * @param b byte[]
	 */
	public void write(byte b[]) throws IOException {
		write(b, 0, b.length);
	}

	/**
	 * Escreve os bytes para output.
	 * @param b byte[]
	 * @param off int
	 * @param len int
	 */
	public void write(byte b[], int off, int len) throws IOException {
		if (closed) {
			throw new IOException("Cannot write to a closed output stream.");
		}
		gzipstream.write(b, off, len);
	}

	/**
	 * Retorna status do output fechado ou não.
	 * @return boolean
	 */
	public boolean closed() {
		return this.closed;
	}

	/**
	 * Implementção padrão reset.
	 */
	public void reset() {
		
	}
}

