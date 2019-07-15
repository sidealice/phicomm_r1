.class public Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;
.super Lcom/alibaba/fastjson/serializer/FieldSerializer;
.source "ObjectFieldSerializer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer$RuntimeSerializerInfo;
    }
.end annotation


# instance fields
.field private format:Ljava/lang/String;

.field private runtimeInfo:Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer$RuntimeSerializerInfo;

.field writeEnumUsingToString:Z

.field writeNullBooleanAsFalse:Z

.field writeNullListAsEmpty:Z

.field writeNullStringAsEmpty:Z

.field writeNumberAsZero:Z


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/util/FieldInfo;)V
    .locals 7
    .param p1, "fieldInfo"    # Lcom/alibaba/fastjson/util/FieldInfo;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 38
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/serializer/FieldSerializer;-><init>(Lcom/alibaba/fastjson/util/FieldInfo;)V

    .line 29
    iput-boolean v5, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->writeNumberAsZero:Z

    .line 30
    iput-boolean v5, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->writeNullStringAsEmpty:Z

    .line 31
    iput-boolean v5, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->writeNullBooleanAsFalse:Z

    .line 32
    iput-boolean v5, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->writeNullListAsEmpty:Z

    .line 33
    iput-boolean v5, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->writeEnumUsingToString:Z

    .line 40
    const-class v5, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/util/FieldInfo;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 42
    .local v0, "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-eqz v0, :cond_6

    .line 43
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->format()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->format:Ljava/lang/String;

    .line 45
    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->format:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    .line 46
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->format:Ljava/lang/String;

    .line 49
    :cond_0
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v1

    .local v1, "arr$":[Lcom/alibaba/fastjson/serializer/SerializerFeature;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_6

    aget-object v2, v1, v3

    .line 50
    .local v2, "feature":Lcom/alibaba/fastjson/serializer/SerializerFeature;
    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-ne v2, v5, :cond_2

    .line 51
    iput-boolean v6, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->writeNumberAsZero:Z

    .line 49
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 52
    :cond_2
    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-ne v2, v5, :cond_3

    .line 53
    iput-boolean v6, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->writeNullStringAsEmpty:Z

    goto :goto_1

    .line 54
    :cond_3
    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-ne v2, v5, :cond_4

    .line 55
    iput-boolean v6, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->writeNullBooleanAsFalse:Z

    goto :goto_1

    .line 56
    :cond_4
    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-ne v2, v5, :cond_5

    .line 57
    iput-boolean v6, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->writeNullListAsEmpty:Z

    goto :goto_1

    .line 58
    :cond_5
    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingToString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-ne v2, v5, :cond_1

    .line 59
    iput-boolean v6, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->writeEnumUsingToString:Z

    goto :goto_1

    .line 63
    .end local v1    # "arr$":[Lcom/alibaba/fastjson/serializer/SerializerFeature;
    .end local v2    # "feature":Lcom/alibaba/fastjson/serializer/SerializerFeature;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_6
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
    .line 66
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->writePrefix(Lcom/alibaba/fastjson/serializer/JSONSerializer;)V

    .line 67
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->writeValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;)V

    .line 68
    return-void
.end method

.method public writeValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;)V
    .locals 8
    .param p1, "serializer"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "propertyValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 72
    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->format:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 73
    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->format:Ljava/lang/String;

    invoke-virtual {p1, p2, v5}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeWithFormat(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    .end local p2    # "propertyValue":Ljava/lang/Object;
    :goto_0
    return-void

    .line 77
    .restart local p2    # "propertyValue":Ljava/lang/Object;
    :cond_0
    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->runtimeInfo:Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer$RuntimeSerializerInfo;

    if-nez v5, :cond_1

    .line 80
    if-nez p2, :cond_2

    .line 81
    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-virtual {v5}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldClass()Ljava/lang/Class;

    move-result-object v1

    .line 86
    .local v1, "runtimeFieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v0

    .line 87
    .local v0, "fieldSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    new-instance v5, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer$RuntimeSerializerInfo;

    invoke-direct {v5, v0, v1}, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer$RuntimeSerializerInfo;-><init>(Lcom/alibaba/fastjson/serializer/ObjectSerializer;Ljava/lang/Class;)V

    iput-object v5, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->runtimeInfo:Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer$RuntimeSerializerInfo;

    .line 90
    .end local v0    # "fieldSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .end local v1    # "runtimeFieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->runtimeInfo:Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer$RuntimeSerializerInfo;

    .line 92
    .local v2, "runtimeInfo":Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer$RuntimeSerializerInfo;
    if-nez p2, :cond_7

    .line 93
    iget-boolean v5, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->writeNumberAsZero:Z

    if-eqz v5, :cond_3

    const-class v5, Ljava/lang/Number;

    iget-object v6, v2, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer$RuntimeSerializerInfo;->runtimeFieldClass:Ljava/lang/Class;

    invoke-virtual {v5, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 94
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getWriter()Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v5

    const/16 v6, 0x30

    invoke-virtual {v5, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    goto :goto_0

    .line 83
    .end local v2    # "runtimeInfo":Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer$RuntimeSerializerInfo;
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .restart local v1    # "runtimeFieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_1

    .line 96
    .end local v1    # "runtimeFieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v2    # "runtimeInfo":Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer$RuntimeSerializerInfo;
    :cond_3
    iget-boolean v5, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->writeNullStringAsEmpty:Z

    if-eqz v5, :cond_4

    const-class v5, Ljava/lang/String;

    iget-object v6, v2, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer$RuntimeSerializerInfo;->runtimeFieldClass:Ljava/lang/Class;

    if-ne v5, v6, :cond_4

    .line 97
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getWriter()Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v5

    const-string v6, "\"\""

    invoke-virtual {v5, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :cond_4
    iget-boolean v5, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->writeNullBooleanAsFalse:Z

    if-eqz v5, :cond_5

    const-class v5, Ljava/lang/Boolean;

    iget-object v6, v2, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer$RuntimeSerializerInfo;->runtimeFieldClass:Ljava/lang/Class;

    if-ne v5, v6, :cond_5

    .line 100
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getWriter()Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v5

    const-string v6, "false"

    invoke-virtual {v5, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :cond_5
    iget-boolean v5, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->writeNullListAsEmpty:Z

    if-eqz v5, :cond_6

    const-class v5, Ljava/util/Collection;

    iget-object v6, v2, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer$RuntimeSerializerInfo;->runtimeFieldClass:Ljava/lang/Class;

    invoke-virtual {v5, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 103
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getWriter()Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v5

    const-string v6, "[]"

    invoke-virtual {v5, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :cond_6
    iget-object v5, v2, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer$RuntimeSerializerInfo;->fieldSerializer:Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-virtual {v6}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, p1, v7, v6, v7}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    goto/16 :goto_0

    .line 111
    :cond_7
    iget-boolean v5, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->writeEnumUsingToString:Z

    const/4 v6, 0x1

    if-ne v5, v6, :cond_8

    iget-object v5, v2, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer$RuntimeSerializerInfo;->runtimeFieldClass:Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Class;->isEnum()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 112
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getWriter()Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v5

    check-cast p2, Ljava/lang/Enum;

    .end local p2    # "propertyValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 116
    .restart local p2    # "propertyValue":Ljava/lang/Object;
    :cond_8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 117
    .local v3, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v5, v2, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer$RuntimeSerializerInfo;->runtimeFieldClass:Ljava/lang/Class;

    if-ne v3, v5, :cond_9

    .line 118
    iget-object v5, v2, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer$RuntimeSerializerInfo;->fieldSerializer:Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-virtual {v6}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-virtual {v7}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldType()Ljava/lang/reflect/Type;

    move-result-object v7

    invoke-interface {v5, p1, p2, v6, v7}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    goto/16 :goto_0

    .line 122
    :cond_9
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v4

    .line 123
    .local v4, "valueSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    iget-object v5, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-virtual {v5}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/fastjson/serializer/ObjectFieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-virtual {v6}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldType()Ljava/lang/reflect/Type;

    move-result-object v6

    invoke-interface {v4, p1, p2, v5, v6}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    goto/16 :goto_0
.end method
