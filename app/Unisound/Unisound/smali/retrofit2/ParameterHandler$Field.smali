.class final Lretrofit2/ParameterHandler$Field;
.super Lretrofit2/ParameterHandler;
.source "ParameterHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/ParameterHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Field"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lretrofit2/ParameterHandler",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final encoded:Z

.field private final name:Ljava/lang/String;

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
.method constructor <init>(Ljava/lang/String;Lretrofit2/Converter;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "encoded"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lretrofit2/Converter",
            "<TT;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 214
    .local p0, "this":Lretrofit2/ParameterHandler$Field;, "Lretrofit2/ParameterHandler$Field<TT;>;"
    .local p2, "valueConverter":Lretrofit2/Converter;, "Lretrofit2/Converter<TT;Ljava/lang/String;>;"
    invoke-direct {p0}, Lretrofit2/ParameterHandler;-><init>()V

    .line 215
    const-string v0, "name == null"

    invoke-static {p1, v0}, Lretrofit2/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lretrofit2/ParameterHandler$Field;->name:Ljava/lang/String;

    .line 216
    iput-object p2, p0, Lretrofit2/ParameterHandler$Field;->valueConverter:Lretrofit2/Converter;

    .line 217
    iput-boolean p3, p0, Lretrofit2/ParameterHandler$Field;->encoded:Z

    .line 218
    return-void
.end method


# virtual methods
.method apply(Lretrofit2/RequestBuilder;Ljava/lang/Object;)V
    .locals 3
    .param p1, "builder"    # Lretrofit2/RequestBuilder;
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/RequestBuilder;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 221
    .local p0, "this":Lretrofit2/ParameterHandler$Field;, "Lretrofit2/ParameterHandler$Field<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    if-nez p2, :cond_1

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    iget-object v1, p0, Lretrofit2/ParameterHandler$Field;->valueConverter:Lretrofit2/Converter;

    invoke-interface {v1, p2}, Lretrofit2/Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 224
    .local v0, "fieldValue":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 226
    iget-object v1, p0, Lretrofit2/ParameterHandler$Field;->name:Ljava/lang/String;

    iget-boolean v2, p0, Lretrofit2/ParameterHandler$Field;->encoded:Z

    invoke-virtual {p1, v1, v0, v2}, Lretrofit2/RequestBuilder;->addFormField(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method
