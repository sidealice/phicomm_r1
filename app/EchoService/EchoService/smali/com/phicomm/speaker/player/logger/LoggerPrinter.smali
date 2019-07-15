.class Lcom/phicomm/speaker/player/logger/LoggerPrinter;
.super Ljava/lang/Object;
.source "LoggerPrinter.java"

# interfaces
.implements Lcom/phicomm/speaker/player/logger/Printer;


# static fields
.field private static final JSON_INDENT:I = 0x2


# instance fields
.field private final localTag:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final logAdapters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/phicomm/speaker/player/logger/LogAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/player/logger/LoggerPrinter;->localTag:Ljava/lang/ThreadLocal;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/player/logger/LoggerPrinter;->logAdapters:Ljava/util/List;

    return-void
.end method

.method private varargs createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 172
    if-eqz p2, :cond_0

    array-length v0, p2

    if-nez v0, :cond_1

    .end local p1    # "message":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .restart local p1    # "message":Ljava/lang/String;
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private getTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 163
    iget-object v1, p0, Lcom/phicomm/speaker/player/logger/LoggerPrinter;->localTag:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 164
    .local v0, "tag":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 165
    iget-object v1, p0, Lcom/phicomm/speaker/player/logger/LoggerPrinter;->localTag:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    .line 168
    .end local v0    # "tag":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private varargs declared-synchronized log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "priority"    # I
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    .prologue
    .line 154
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/phicomm/speaker/player/logger/LoggerPrinter;->getTag()Ljava/lang/String;

    move-result-object v1

    .line 155
    .local v1, "tag":Ljava/lang/String;
    invoke-direct {p0, p3, p4}, Lcom/phicomm/speaker/player/logger/LoggerPrinter;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "message":Ljava/lang/String;
    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/phicomm/speaker/player/logger/LoggerPrinter;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    monitor-exit p0

    return-void

    .line 154
    .end local v0    # "message":Ljava/lang/String;
    .end local v1    # "tag":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public addAdapter(Lcom/phicomm/speaker/player/logger/LogAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/phicomm/speaker/player/logger/LogAdapter;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/phicomm/speaker/player/logger/LoggerPrinter;->logAdapters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    return-void
.end method

.method public clearLogAdapters()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/phicomm/speaker/player/logger/LoggerPrinter;->logAdapters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 144
    return-void
.end method

.method public d(Ljava/lang/Object;)V
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 54
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/phicomm/speaker/player/logger/Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/phicomm/speaker/player/logger/LoggerPrinter;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    return-void
.end method

.method public varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 50
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/phicomm/speaker/player/logger/LoggerPrinter;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    return-void
.end method

.method public varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/phicomm/speaker/player/logger/LoggerPrinter;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    return-void
.end method

.method public varargs e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 62
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/phicomm/speaker/player/logger/LoggerPrinter;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    return-void
.end method

.method public varargs i(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 70
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/phicomm/speaker/player/logger/LoggerPrinter;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    return-void
.end method

.method public json(Ljava/lang/String;)V
    .locals 7
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 82
    invoke-static {p1}, Lcom/phicomm/speaker/player/logger/Utils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 83
    const-string v4, "Empty/Null json content"

    invoke-virtual {p0, v4}, Lcom/phicomm/speaker/player/logger/LoggerPrinter;->d(Ljava/lang/Object;)V

    .line 104
    :goto_0
    return-void

    .line 87
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 88
    const-string v4, "{"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 89
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 90
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 91
    .local v3, "message":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/phicomm/speaker/player/logger/LoggerPrinter;->d(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 101
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "message":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Lorg/json/JSONException;
    const-string v4, "Invalid Json"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {p0, v4, v5}, Lcom/phicomm/speaker/player/logger/LoggerPrinter;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 94
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    :try_start_1
    const-string v4, "["

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 95
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 96
    .local v1, "jsonArray":Lorg/json/JSONArray;
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 97
    .restart local v3    # "message":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/phicomm/speaker/player/logger/LoggerPrinter;->d(Ljava/lang/Object;)V

    goto :goto_0

    .line 100
    .end local v1    # "jsonArray":Lorg/json/JSONArray;
    .end local v3    # "message":Ljava/lang/String;
    :cond_2
    const-string v4, "Invalid Json"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p0, v4, v5}, Lcom/phicomm/speaker/player/logger/LoggerPrinter;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public declared-synchronized log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "priority"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 125
    monitor-enter p0

    if-eqz p4, :cond_0

    if-eqz p3, :cond_0

    .line 126
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p4}, Lcom/phicomm/speaker/player/logger/Utils;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 128
    :cond_0
    if-eqz p4, :cond_1

    if-nez p3, :cond_1

    .line 129
    invoke-static {p4}, Lcom/phicomm/speaker/player/logger/Utils;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p3

    .line 131
    :cond_1
    invoke-static {p3}, Lcom/phicomm/speaker/player/logger/Utils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 132
    const-string p3, "Empty/NULL log message"

    .line 135
    :cond_2
    iget-object v2, p0, Lcom/phicomm/speaker/player/logger/LoggerPrinter;->logAdapters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/phicomm/speaker/player/logger/LogAdapter;

    .line 136
    .local v0, "adapter":Lcom/phicomm/speaker/player/logger/LogAdapter;
    invoke-interface {v0, p1, p2}, Lcom/phicomm/speaker/player/logger/LogAdapter;->isLoggable(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 137
    invoke-interface {v0, p1, p2, p3}, Lcom/phicomm/speaker/player/logger/LogAdapter;->log(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 125
    .end local v0    # "adapter":Lcom/phicomm/speaker/player/logger/LogAdapter;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 140
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_4
    monitor-exit p0

    return-void
.end method

.method public t(Ljava/lang/String;)Lcom/phicomm/speaker/player/logger/Printer;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 43
    if-eqz p1, :cond_0

    .line 44
    iget-object v0, p0, Lcom/phicomm/speaker/player/logger/LoggerPrinter;->localTag:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 46
    :cond_0
    return-object p0
.end method

.method public varargs v(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 74
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/phicomm/speaker/player/logger/LoggerPrinter;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    return-void
.end method

.method public varargs w(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 66
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/phicomm/speaker/player/logger/LoggerPrinter;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    return-void
.end method

.method public varargs wtf(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 78
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/phicomm/speaker/player/logger/LoggerPrinter;->log(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    return-void
.end method

.method public xml(Ljava/lang/String;)V
    .locals 7
    .param p1, "xml"    # Ljava/lang/String;

    .prologue
    .line 107
    invoke-static {p1}, Lcom/phicomm/speaker/player/logger/Utils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 108
    const-string v4, "Empty/Null xml content"

    invoke-virtual {p0, v4}, Lcom/phicomm/speaker/player/logger/LoggerPrinter;->d(Ljava/lang/Object;)V

    .line 122
    :goto_0
    return-void

    .line 112
    :cond_0
    :try_start_0
    new-instance v2, Ljavax/xml/transform/stream/StreamSource;

    new-instance v4, Ljava/io/StringReader;

    invoke-direct {v4, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/Reader;)V

    .line 113
    .local v2, "xmlInput":Ljavax/xml/transform/Source;
    new-instance v3, Ljavax/xml/transform/stream/StreamResult;

    new-instance v4, Ljava/io/StringWriter;

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    invoke-direct {v3, v4}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    .line 114
    .local v3, "xmlOutput":Ljavax/xml/transform/stream/StreamResult;
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v1

    .line 115
    .local v1, "transformer":Ljavax/xml/transform/Transformer;
    const-string v4, "indent"

    const-string v5, "yes"

    invoke-virtual {v1, v4, v5}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v4, "{http://xml.apache.org/xslt}indent-amount"

    const-string v5, "2"

    invoke-virtual {v1, v4, v5}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-virtual {v1, v2, v3}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 118
    invoke-virtual {v3}, Ljavax/xml/transform/stream/StreamResult;->getWriter()Ljava/io/Writer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ">"

    const-string v6, ">\n"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/phicomm/speaker/player/logger/LoggerPrinter;->d(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 119
    .end local v1    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v2    # "xmlInput":Ljavax/xml/transform/Source;
    .end local v3    # "xmlOutput":Ljavax/xml/transform/stream/StreamResult;
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljavax/xml/transform/TransformerException;
    const-string v4, "Invalid xml"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p0, v4, v5}, Lcom/phicomm/speaker/player/logger/LoggerPrinter;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
