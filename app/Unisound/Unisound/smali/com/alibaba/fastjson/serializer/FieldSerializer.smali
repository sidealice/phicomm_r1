.class public abstract Lcom/alibaba/fastjson/serializer/FieldSerializer;
.super Ljava/lang/Object;
.source "FieldSerializer.java"


# instance fields
.field private final double_quoted_fieldPrefix:Ljava/lang/String;

.field protected final fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

.field private final single_quoted_fieldPrefix:Ljava/lang/String;

.field private final un_quoted_fieldPrefix:Ljava/lang/String;

.field private writeNull:Z


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/util/FieldInfo;)V
    .locals 8
    .param p1, "fieldInfo"    # Lcom/alibaba/fastjson/util/FieldInfo;

    .prologue
    const/4 v7, 0x1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writeNull:Z

    .line 39
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    .line 40
    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson/util/FieldInfo;->setAccessible(Z)V

    .line 42
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x22

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->double_quoted_fieldPrefix:Ljava/lang/String;

    .line 44
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x27

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\':"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->single_quoted_fieldPrefix:Ljava/lang/String;

    .line 46
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->un_quoted_fieldPrefix:Ljava/lang/String;

    .line 48
    const-class v5, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/util/FieldInfo;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 49
    .local v0, "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-eqz v0, :cond_1

    .line 50
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v1

    .local v1, "arr$":[Lcom/alibaba/fastjson/serializer/SerializerFeature;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v1, v3

    .line 51
    .local v2, "feature":Lcom/alibaba/fastjson/serializer/SerializerFeature;
    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-ne v2, v5, :cond_0

    .line 52
    iput-boolean v7, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writeNull:Z

    .line 50
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 56
    .end local v1    # "arr$":[Lcom/alibaba/fastjson/serializer/SerializerFeature;
    .end local v2    # "feature":Lcom/alibaba/fastjson/serializer/SerializerFeature;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_1
    return-void
.end method


# virtual methods
.method public getField()Ljava/lang/reflect/Field;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/util/FieldInfo;->getField()Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0
.end method

.method public getMethod()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/util/FieldInfo;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPropertyValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 90
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/util/FieldInfo;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get property error\u3002 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-virtual {v3}, Lcom/alibaba/fastjson/util/FieldInfo;->gerQualifiedName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isWriteNull()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writeNull:Z

    return v0
.end method

.method public writePrefix(Lcom/alibaba/fastjson/serializer/JSONSerializer;)V
    .locals 2
    .param p1, "serializer"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getWriter()Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v0

    .line 77
    .local v0, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->QuoteFieldNames:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 78
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->single_quoted_fieldPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 86
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->double_quoted_fieldPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :cond_1
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->un_quoted_fieldPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public abstract writeProperty(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract writeValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
