.class final Lretrofit2/ParameterHandler$FieldMap;
.super Lretrofit2/ParameterHandler;
.source "ParameterHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/ParameterHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FieldMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lretrofit2/ParameterHandler",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final encoded:Z

.field private final valueConverter:Lretrofit2/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Converter",
            "<TT;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lretrofit2/Converter;Z)V
    .locals 0
    .param p2, "encoded"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Converter",
            "<TT;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 234
    .local p0, "this":Lretrofit2/ParameterHandler$FieldMap;, "Lretrofit2/ParameterHandler$FieldMap<TT;>;"
    .local p1, "valueConverter":Lretrofit2/Converter;, "Lretrofit2/Converter<TT;Ljava/lang/String;>;"
    invoke-direct {p0}, Lretrofit2/ParameterHandler;-><init>()V

    .line 235
    iput-object p1, p0, Lretrofit2/ParameterHandler$FieldMap;->valueConverter:Lretrofit2/Converter;

    .line 236
    iput-boolean p2, p0, Lretrofit2/ParameterHandler$FieldMap;->encoded:Z

    .line 237
    return-void
.end method


# virtual methods
.method bridge synthetic apply(Lretrofit2/RequestBuilder;Ljava/lang/Object;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 230
    .local p0, "this":Lretrofit2/ParameterHandler$FieldMap;, "Lretrofit2/ParameterHandler$FieldMap<TT;>;"
    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lretrofit2/ParameterHandler$FieldMap;->apply(Lretrofit2/RequestBuilder;Ljava/util/Map;)V

    return-void
.end method

.method apply(Lretrofit2/RequestBuilder;Ljava/util/Map;)V
    .locals 7
    .param p1, "builder"    # Lretrofit2/RequestBuilder;
    .param p2    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/RequestBuilder;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 241
    .local p0, "this":Lretrofit2/ParameterHandler$FieldMap;, "Lretrofit2/ParameterHandler$FieldMap<TT;>;"
    .local p2, "value":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TT;>;"
    if-nez p2, :cond_0

    .line 242
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Field map was null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 245
    :cond_0
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 246
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;TT;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 247
    .local v1, "entryKey":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 248
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Field map contained null key."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 250
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 251
    .local v2, "entryValue":Ljava/lang/Object;, "TT;"
    if-nez v2, :cond_2

    .line 252
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Field map contained null value for key \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 256
    :cond_2
    iget-object v5, p0, Lretrofit2/ParameterHandler$FieldMap;->valueConverter:Lretrofit2/Converter;

    invoke-interface {v5, v2}, Lretrofit2/Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 257
    .local v3, "fieldEntry":Ljava/lang/String;
    if-nez v3, :cond_3

    .line 258
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Field map value \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' converted to null by "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lretrofit2/ParameterHandler$FieldMap;->valueConverter:Lretrofit2/Converter;

    .line 261
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for key \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 267
    :cond_3
    iget-boolean v5, p0, Lretrofit2/ParameterHandler$FieldMap;->encoded:Z

    invoke-virtual {p1, v1, v3, v5}, Lretrofit2/RequestBuilder;->addFormField(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 269
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;TT;>;"
    .end local v1    # "entryKey":Ljava/lang/String;
    .end local v2    # "entryValue":Ljava/lang/Object;, "TT;"
    .end local v3    # "fieldEntry":Ljava/lang/String;
    :cond_4
    return-void
.end method
