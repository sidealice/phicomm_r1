.class final Lretrofit2/BuiltInConverters;
.super Lretrofit2/Converter$Factory;
.source "BuiltInConverters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit2/BuiltInConverters$ToStringConverter;,
        Lretrofit2/BuiltInConverters$BufferingResponseBodyConverter;,
        Lretrofit2/BuiltInConverters$StreamingResponseBodyConverter;,
        Lretrofit2/BuiltInConverters$RequestBodyConverter;,
        Lretrofit2/BuiltInConverters$VoidResponseBodyConverter;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lretrofit2/Converter$Factory;-><init>()V

    return-void
.end method


# virtual methods
.method public requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/Converter;
    .locals 2
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "parameterAnnotations"    # [Ljava/lang/annotation/Annotation;
    .param p3, "methodAnnotations"    # [Ljava/lang/annotation/Annotation;
    .param p4, "retrofit"    # Lretrofit2/Retrofit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lretrofit2/Retrofit;",
            ")",
            "Lretrofit2/Converter",
            "<*",
            "Lokhttp3/RequestBody;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    const-class v0, Lokhttp3/RequestBody;

    invoke-static {p1}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    sget-object v0, Lretrofit2/BuiltInConverters$RequestBodyConverter;->INSTANCE:Lretrofit2/BuiltInConverters$RequestBodyConverter;

    .line 46
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public responseBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/Converter;
    .locals 1
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "annotations"    # [Ljava/lang/annotation/Annotation;
    .param p3, "retrofit"    # Lretrofit2/Retrofit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lretrofit2/Retrofit;",
            ")",
            "Lretrofit2/Converter",
            "<",
            "Lokhttp3/ResponseBody;",
            "*>;"
        }
    .end annotation

    .prologue
    .line 29
    const-class v0, Lokhttp3/ResponseBody;

    if-ne p1, v0, :cond_1

    .line 30
    const-class v0, Lretrofit2/http/Streaming;

    invoke-static {p2, v0}, Lretrofit2/Utils;->isAnnotationPresent([Ljava/lang/annotation/Annotation;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    sget-object v0, Lretrofit2/BuiltInConverters$StreamingResponseBodyConverter;->INSTANCE:Lretrofit2/BuiltInConverters$StreamingResponseBodyConverter;

    .line 37
    :goto_0
    return-object v0

    .line 32
    :cond_0
    sget-object v0, Lretrofit2/BuiltInConverters$BufferingResponseBodyConverter;->INSTANCE:Lretrofit2/BuiltInConverters$BufferingResponseBodyConverter;

    goto :goto_0

    .line 34
    :cond_1
    const-class v0, Ljava/lang/Void;

    if-ne p1, v0, :cond_2

    .line 35
    sget-object v0, Lretrofit2/BuiltInConverters$VoidResponseBodyConverter;->INSTANCE:Lretrofit2/BuiltInConverters$VoidResponseBodyConverter;

    goto :goto_0

    .line 37
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
