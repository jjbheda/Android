package com.taobao.top.android.api;

import java.io.File;
import java.io.IOException;

public class FileItem
{
  private byte[] content;
  private File file;
  private String fileName;
  private String mimeType;

  public FileItem(File paramFile)
  {
    this.file = paramFile;
  }

  public FileItem(String paramString)
  {
    this(new File(paramString));
  }

  public FileItem(String paramString, byte[] paramArrayOfByte)
  {
    this.fileName = paramString;
    this.content = paramArrayOfByte;
  }

  public FileItem(String paramString1, byte[] paramArrayOfByte, String paramString2)
  {
    this(paramString1, paramArrayOfByte);
    this.mimeType = paramString2;
  }

  // ERROR //
  public byte[] getContent()
    throws IOException
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 30	com/taobao/top/android/api/FileItem:content	[B
    //   4: ifnonnull +76 -> 80
    //   7: aload_0
    //   8: getfield 18	com/taobao/top/android/api/FileItem:file	Ljava/io/File;
    //   11: ifnull +69 -> 80
    //   14: aload_0
    //   15: getfield 18	com/taobao/top/android/api/FileItem:file	Ljava/io/File;
    //   18: invokevirtual 43	java/io/File:exists	()Z
    //   21: ifeq +59 -> 80
    //   24: new 45	java/io/FileInputStream
    //   27: dup
    //   28: aload_0
    //   29: getfield 18	com/taobao/top/android/api/FileItem:file	Ljava/io/File;
    //   32: invokespecial 46	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   35: astore_1
    //   36: new 48	java/io/ByteArrayOutputStream
    //   39: dup
    //   40: invokespecial 49	java/io/ByteArrayOutputStream:<init>	()V
    //   43: astore_2
    //   44: aload_1
    //   45: invokevirtual 55	java/io/InputStream:read	()I
    //   48: istore 6
    //   50: iload 6
    //   52: iconst_m1
    //   53: if_icmpne +32 -> 85
    //   56: aload_0
    //   57: aload_2
    //   58: invokevirtual 58	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   61: putfield 30	com/taobao/top/android/api/FileItem:content	[B
    //   64: aload_2
    //   65: ifnull +7 -> 72
    //   68: aload_2
    //   69: invokevirtual 61	java/io/ByteArrayOutputStream:close	()V
    //   72: aload_1
    //   73: ifnull +7 -> 80
    //   76: aload_1
    //   77: invokevirtual 62	java/io/InputStream:close	()V
    //   80: aload_0
    //   81: getfield 30	com/taobao/top/android/api/FileItem:content	[B
    //   84: areturn
    //   85: aload_2
    //   86: iload 6
    //   88: invokevirtual 66	java/io/ByteArrayOutputStream:write	(I)V
    //   91: goto -47 -> 44
    //   94: astore_3
    //   95: aload_2
    //   96: astore 4
    //   98: aload_1
    //   99: astore 5
    //   101: aload 4
    //   103: ifnull +8 -> 111
    //   106: aload 4
    //   108: invokevirtual 61	java/io/ByteArrayOutputStream:close	()V
    //   111: aload 5
    //   113: ifnull +8 -> 121
    //   116: aload 5
    //   118: invokevirtual 62	java/io/InputStream:close	()V
    //   121: aload_3
    //   122: athrow
    //   123: astore_3
    //   124: aconst_null
    //   125: astore 5
    //   127: aconst_null
    //   128: astore 4
    //   130: goto -29 -> 101
    //   133: astore_3
    //   134: aload_1
    //   135: astore 5
    //   137: aconst_null
    //   138: astore 4
    //   140: goto -39 -> 101
    //
    // Exception table:
    //   from	to	target	type
    //   44	50	94	finally
    //   56	64	94	finally
    //   85	91	94	finally
    //   24	36	123	finally
    //   36	44	133	finally
  }

  public String getFileName()
  {
    if ((this.fileName == null) && (this.file != null) && (this.file.exists()))
      this.fileName = this.file.getName();
    return this.fileName;
  }

  public String getMimeType()
    throws IOException
  {
    if (this.mimeType == null)
      this.mimeType = TaobaoUtils.getMimeType(getContent());
    return this.mimeType;
  }
}

/* Location:           /Users/idCarMack/program/private/xianyu/XianYu/classes-dex2jar.jar
 * Qualified Name:     com.taobao.top.android.api.FileItem
 * JD-Core Version:    0.6.2
 */