.class final Lcom/alibaba/fastjson/serializer/NumberFieldSerializer;
.super Lcom/alibaba/fastjson/serializer/FieldSerializer;
.source "NumberFieldSerializer.java"


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/util/FieldInfo;)V
    .locals 0
    .param p1, "fieldInfo"    # Lcom/alibaba/fastjson/util/FieldInfo;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/serializer/FieldSerializer;-><init>(Lcom/alibaba/fastjson/util/FieldInfo;)V

    .line 27
    return-void
.end method


# virtual methods
.method public writeProperty(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;)V
    .locals 0
    .param p1, "serializer"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "propertyValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/NumberFieldSerializer;->writePrefix(Lcom/alibaba/fastjson/serializer/JSONSerializer;)V

    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/serializer/NumberFieldSerializer;->writeValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;)V

    .line 32
    return-void
.end method

.method public writeValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;)V
    .locals 3
    .param p1, "serializer"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "propertyValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 36
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getWriter()Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v0

    .line 38
    .local v0, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    move-object v1, p2

    .line 40
    .local v1, "value":Ljava/lang/Object;
    if-nez v1, :cond_1

    .line 41
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    const/16 v2, 0x30

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 50
    :goto_0
    return-void

    .line 44
    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    goto :goto_0
.end method
