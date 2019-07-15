.class public Lcom/alibaba/fastjson/serializer/SimpleDateFormatSerializer;
.super Ljava/lang/Object;
.source "SimpleDateFormatSerializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# instance fields
.field private final pattern:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/SimpleDateFormatSerializer;->pattern:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 4
    .param p1, "serializer"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "fieldType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17
    if-nez p2, :cond_0

    .line 18
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getWriter()Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 27
    :goto_0
    return-void

    :cond_0
    move-object v0, p2

    .line 22
    check-cast v0, Ljava/util/Date;

    .line 23
    .local v0, "date":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SimpleDateFormatSerializer;->pattern:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 25
    .local v1, "format":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 26
    .local v2, "text":Ljava/lang/String;
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V

    goto :goto_0
.end method
