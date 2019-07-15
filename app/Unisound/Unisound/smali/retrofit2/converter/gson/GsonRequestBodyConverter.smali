.class final Lretrofit2/converter/gson/GsonRequestBodyConverter;
.super Ljava/lang/Object;
.source "GsonRequestBodyConverter.java"

# interfaces
.implements Lretrofit2/Converter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lretrofit2/Converter",
        "<TT;",
        "Lokhttp3/RequestBody;",
        ">;"
    }
.end annotation


# static fields
.field private static final MEDIA_TYPE:Lokhttp3/MediaType;

.field private static final UTF_8:Ljava/nio/charset/Charset;


# instance fields
.field private final adapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final gson:Lcom/google/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string v0, "application/json; charset=UTF-8"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lretrofit2/converter/gson/GsonRequestBodyConverter;->MEDIA_TYPE:Lokhttp3/MediaType;

    .line 32
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lretrofit2/converter/gson/GsonRequestBodyConverter;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method constructor <init>(Lcom/google/gson/Gson;Lcom/google/gson/TypeAdapter;)V
    .locals 0
    .param p1, "gson"    # Lcom/google/gson/Gson;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/Gson;",
            "Lcom/google/gson/TypeAdapter",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lretrofit2/converter/gson/GsonRequestBodyConverter;, "Lretrofit2/converter/gson/GsonRequestBodyConverter<TT;>;"
    .local p2, "adapter":Lcom/google/gson/TypeAdapter;, "Lcom/google/gson/TypeAdapter<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lretrofit2/converter/gson/GsonRequestBodyConverter;->gson:Lcom/google/gson/Gson;

    .line 39
    iput-object p2, p0, Lretrofit2/converter/gson/GsonRequestBodyConverter;->adapter:Lcom/google/gson/TypeAdapter;

    .line 40
    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Lretrofit2/converter/gson/GsonRequestBodyConverter;, "Lretrofit2/converter/gson/GsonRequestBodyConverter<TT;>;"
    invoke-virtual {p0, p1}, Lretrofit2/converter/gson/GsonRequestBodyConverter;->convert(Ljava/lang/Object;)Lokhttp3/RequestBody;

    move-result-object v0

    return-object v0
.end method

.method public convert(Ljava/lang/Object;)Lokhttp3/RequestBody;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lokhttp3/RequestBody;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lretrofit2/converter/gson/GsonRequestBodyConverter;, "Lretrofit2/converter/gson/GsonRequestBodyConverter<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    .line 44
    .local v0, "buffer":Lokio/Buffer;
    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-virtual {v0}, Lokio/Buffer;->outputStream()Ljava/io/OutputStream;

    move-result-object v3

    sget-object v4, Lretrofit2/converter/gson/GsonRequestBodyConverter;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 45
    .local v2, "writer":Ljava/io/Writer;
    iget-object v3, p0, Lretrofit2/converter/gson/GsonRequestBodyConverter;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v3, v2}, Lcom/google/gson/Gson;->newJsonWriter(Ljava/io/Writer;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v1

    .line 46
    .local v1, "jsonWriter":Lcom/google/gson/stream/JsonWriter;
    iget-object v3, p0, Lretrofit2/converter/gson/GsonRequestBodyConverter;->adapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v3, v1, p1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 47
    invoke-virtual {v1}, Lcom/google/gson/stream/JsonWriter;->close()V

    .line 48
    sget-object v3, Lretrofit2/converter/gson/GsonRequestBodyConverter;->MEDIA_TYPE:Lokhttp3/MediaType;

    invoke-virtual {v0}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Lokio/ByteString;)Lokhttp3/RequestBody;

    move-result-object v3

    return-object v3
.end method
