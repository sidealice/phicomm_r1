.class Lforage/PrettyPrinter$GsonPrettyPrinter;
.super Lforage/PrettyPrinter$Default;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lforage/PrettyPrinter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GsonPrettyPrinter"
.end annotation


# instance fields
.field private final gson:Lcom/google/gson/Gson;

.field private final jsonParser:Lcom/google/gson/JsonParser;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lforage/PrettyPrinter$Default;-><init>()V

    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->setPrettyPrinting()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    iput-object v0, p0, Lforage/PrettyPrinter$GsonPrettyPrinter;->gson:Lcom/google/gson/Gson;

    new-instance v0, Lcom/google/gson/JsonParser;

    invoke-direct {v0}, Lcom/google/gson/JsonParser;-><init>()V

    iput-object v0, p0, Lforage/PrettyPrinter$GsonPrettyPrinter;->jsonParser:Lcom/google/gson/JsonParser;

    return-void
.end method


# virtual methods
.method public convert(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    :try_start_0
    iget-object v0, p0, Lforage/PrettyPrinter$GsonPrettyPrinter;->gson:Lcom/google/gson/Gson;

    iget-object v1, p0, Lforage/PrettyPrinter$GsonPrettyPrinter;->jsonParser:Lcom/google/gson/JsonParser;

    invoke-virtual {v1, p1}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Lcom/google/gson/JsonElement;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-super {p0, p1}, Lforage/PrettyPrinter$Default;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
