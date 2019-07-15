.class public abstract Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
.super Ljava/lang/Object;
.source "FieldDeserializer.java"


# instance fields
.field protected final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected final fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V
    .locals 0
    .param p2, "fieldInfo"    # Lcom/alibaba/fastjson/util/FieldInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 19
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->clazz:Ljava/lang/Class;

    .line 21
    iput-object p2, p0, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    .line 22
    return-void
.end method


# virtual methods
.method public getFastMatchToken()I
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public getField()Ljava/lang/reflect/Field;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/util/FieldInfo;->getField()Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0
.end method

.method public getFieldClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getFieldType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldType()Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public getMethod()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/util/FieldInfo;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method public abstract parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public setValue(Ljava/lang/Object;I)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "value"    # I

    .prologue
    .line 52
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 53
    return-void
.end method

.method public setValue(Ljava/lang/Object;J)V
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "value"    # J

    .prologue
    .line 56
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 57
    return-void
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 65
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-virtual {v5}, Lcom/alibaba/fastjson/util/FieldInfo;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v4

    .line 66
    .local v4, "method":Ljava/lang/reflect/Method;
    if-eqz v4, :cond_4

    .line 68
    :try_start_0
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-virtual {v5}, Lcom/alibaba/fastjson/util/FieldInfo;->isGetOnly()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 69
    const-class v5, Ljava/util/Map;

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 70
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v4, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 71
    .local v3, "map":Ljava/util/Map;
    if-eqz v3, :cond_0

    .line 72
    check-cast p2, Ljava/util/Map;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-interface {v3, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 100
    .end local v3    # "map":Ljava/util/Map;
    :cond_0
    :goto_0
    return-void

    .line 75
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v4, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 76
    .local v0, "collection":Ljava/util/Collection;
    if-eqz v0, :cond_0

    .line 77
    check-cast p2, Ljava/util/Collection;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-interface {v0, p2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 86
    .end local v0    # "collection":Ljava/util/Collection;
    :catch_0
    move-exception v1

    .line 87
    .local v1, "e":Ljava/lang/Exception;
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "set property error, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-virtual {v7}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 81
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_2
    if-nez p2, :cond_3

    :try_start_1
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-virtual {v5}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->isPrimitive()Z

    move-result v5

    if-nez v5, :cond_0

    .line 84
    :cond_3
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-virtual {v4, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 92
    :cond_4
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-virtual {v5}, Lcom/alibaba/fastjson/util/FieldInfo;->getField()Ljava/lang/reflect/Field;

    move-result-object v2

    .line 93
    .local v2, "field":Ljava/lang/reflect/Field;
    if-eqz v2, :cond_0

    .line 95
    :try_start_2
    invoke-virtual {v2, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 96
    :catch_1
    move-exception v1

    .line 97
    .restart local v1    # "e":Ljava/lang/Exception;
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "set property error, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-virtual {v7}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 61
    return-void
.end method

.method public setValue(Ljava/lang/Object;Z)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "value"    # Z

    .prologue
    .line 48
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 49
    return-void
.end method
