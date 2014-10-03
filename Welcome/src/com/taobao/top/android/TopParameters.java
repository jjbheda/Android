package com.taobao.top.android;

import com.taobao.top.android.api.FileItem;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class TopParameters
{
  private Map<String, FileItem> attachments = new HashMap();
  private List<String> fields = new ArrayList();
  private String method;
  private Map<String, String> params = new HashMap();

  public void addAttachment(String paramString, FileItem paramFileItem)
  {
    if (paramFileItem == null)
      return;
    this.attachments.put(paramString, paramFileItem);
  }

  public void addFields(String[] paramArrayOfString)
  {
    int i;
    if (paramArrayOfString != null)
      i = paramArrayOfString.length;
    for (int j = 0; ; j++)
    {
      if (j >= i)
        return;
      String str = paramArrayOfString[j];
      this.fields.add(str);
    }
  }

  public void addParam(String paramString1, String paramString2)
  {
    this.params.put(paramString1, paramString2);
  }

  public FileItem getAttachment(String paramString)
  {
    return (FileItem)this.attachments.get(paramString);
  }

  public Map<String, FileItem> getAttachments()
  {
    return this.attachments;
  }

  public List<String> getFields()
  {
    return this.fields;
  }

  public String getMethod()
  {
    return this.method;
  }

  public String getParam(String paramString)
  {
    return (String)this.params.get(paramString);
  }

  public Map<String, String> getParams()
  {
    return this.params;
  }

  public void removeAttachment(String paramString)
  {
    this.attachments.remove(paramString);
  }

  public void removeParam(String paramString)
  {
    this.params.remove(paramString);
  }

  public void setAttachments(Map<String, FileItem> paramMap)
  {
    this.attachments = paramMap;
  }

  public void setFields(List<String> paramList)
  {
    this.fields = paramList;
  }

  public void setMethod(String paramString)
  {
    this.method = paramString;
  }

  public void setParams(Map<String, String> paramMap)
  {
    this.params = paramMap;
  }
}

/* Location:           /Users/idCarMack/program/private/xianyu/XianYu/classes-dex2jar.jar
 * Qualified Name:     com.taobao.top.android.TopParameters
 * JD-Core Version:    0.6.2
 */