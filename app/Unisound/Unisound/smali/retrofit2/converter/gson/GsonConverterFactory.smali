.class public final Lretrofit2/converter/gson/GsonConverterFactory;
.super Lretrofit2/Converter$Factory;
.source "GsonConverterFactory.java"


# instance fields
.field private final gson:Lcom/google/gson/Gson;


# direct methods
.method private constructor <init>(Lcom/google/gson/Gson;)V
    .locals 0
    .param p1, "gson"    # Lcom/google/gson/Gson;

    .prologue
    .line 57
    invoke-direct {p0}, Lretrofit2/Converter$Factory;-><init>()V

    .line 58
    iput-object p1, p0, Lretrofit2/converter/gson/GsonConverterFactory;->gson:Lcom/google/gson/Gson;

    .line 59
    return-void
.end method

.method public static create()Lretrofit2/converter/gson/GsonConverterFactory;
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-static {v0}, Lretrofit2/converter/gson/GsonConverterFactory;->create(Lcom/google/gson/Gson;)Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lcom/google/gson/Gson;)Lretrofit2/converter/gson/GsonConverterFactory;
    .locals 2
    .param p0, "gson"    # Lcom/google/gson/Gson;

    .prologue
    .line 51
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "gson == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_0
    new-instance v0, Lretrofit2/converter/gson/GsonConverterFactory;

    invoke-direct {v0, p0}, Lretrofit2/converter/gson/GsonConverterFactory;-><init>(Lcom/google/gson/Gson;)V

    return-object v0
.end method


# virtual methods
.method public requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/Converter;
    .locals 3
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
    .line 71
    iget-object v1, p0, Lretrofit2/converter/gson/GsonConverterFactory;->gson:Lcom/google/gson/Gson;

    invoke-static {p1}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    .line 72
    .local v0, "adapter":Lcom/google/gson/TypeAdapter;, "Lcom/google/gson/TypeAdapter<*>;"
    new-instance v1, Lretrofit2/converter/gson/GsonRequestBodyConverter;

    iget-object v2, p0, Lretrofit2/converter/gson/GsonConverterFactory;->gson:Lcom/google/gson/Gson;

    invoke-direct {v1, v2, v0}, Lretrofit2/converter/gson/GsonRequestBodyConverter;-><init>(Lcom/google/gson/Gson;Lcom/google/gson/TypeAdapter;)V

    return-object v1
.end method

.method public responseBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/Converter;
    .locals 3
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
    .line 64
    iget-object v1, p0, Lretrofit2/converter/gson/GsonConverterFactory;->gson:Lcom/google/gson/Gson;

    invoke-static {p1}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    .line 65
    .local v0, "adapter":Lcom/google/gson/TypeAdapter;, "Lcom/google/gson/TypeAdapter<*>;"
    new-instance v1, Lretrofit2/converter/gson/GsonResponseBodyConverter;

    iget-object v2, p0, Lretrofit2/converter/gson/GsonConverterFactory;->gson:Lcom/google/gson/Gson;

    invoke-direct {v1, v2, v0}, Lretrofit2/converter/gson/GsonResponseBodyConverter;-><init>(Lcom/google/gson/Gson;Lcom/google/gson/TypeAdapter;)V

    return-object v1
.end method
