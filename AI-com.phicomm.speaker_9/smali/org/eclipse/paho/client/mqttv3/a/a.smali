.class public Lorg/eclipse/paho/client/mqttv3/a/a;
.super Ljava/lang/Object;
.source "JSR47Logger.java"

# interfaces
.implements Lorg/eclipse/paho/client/mqttv3/a/b;


# instance fields
.field private a:Ljava/util/logging/Logger;

.field private b:Ljava/util/ResourceBundle;

.field private c:Ljava/util/ResourceBundle;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->a:Ljava/util/logging/Logger;

    .line 37
    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->b:Ljava/util/ResourceBundle;

    .line 38
    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->c:Ljava/util/ResourceBundle;

    .line 39
    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->d:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->e:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->f:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/util/ResourceBundle;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 181
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method private a(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ResourceBundle;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1

    const-string p4, "====="

    .line 193
    invoke-virtual {p6, p4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p4

    const/4 v0, -0x1

    if-ne p4, v0, :cond_0

    .line 194
    invoke-direct {p0, p5, p6}, Lorg/eclipse/paho/client/mqttv3/a/a;->a(Ljava/util/ResourceBundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4, p7}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p6

    .line 196
    :cond_0
    new-instance p4, Ljava/util/logging/LogRecord;

    new-instance p5, Ljava/lang/StringBuffer;

    iget-object p7, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->e:Ljava/lang/String;

    invoke-static {p7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p7

    invoke-direct {p5, p7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string p7, ": "

    invoke-virtual {p5, p7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p5, p6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-direct {p4, p1, p5}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 198
    invoke-virtual {p4, p2}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p4, p3}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 200
    iget-object p1, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->f:Ljava/lang/String;

    invoke-virtual {p4, p1}, Ljava/util/logging/LogRecord;->setLoggerName(Ljava/lang/String;)V

    if-eqz p8, :cond_1

    .line 207
    invoke-virtual {p4, p8}, Ljava/util/logging/LogRecord;->setThrown(Ljava/lang/Throwable;)V

    .line 210
    :cond_1
    iget-object p1, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->a:Ljava/util/logging/Logger;

    invoke-virtual {p1, p4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    return-void
.end method

.method private b(I)Ljava/util/logging/Level;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    .line 236
    :pswitch_0
    sget-object p1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    goto :goto_0

    .line 233
    :pswitch_1
    sget-object p1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    goto :goto_0

    .line 230
    :pswitch_2
    sget-object p1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    goto :goto_0

    .line 227
    :pswitch_3
    sget-object p1, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    goto :goto_0

    .line 224
    :pswitch_4
    sget-object p1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    goto :goto_0

    .line 221
    :pswitch_5
    sget-object p1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    goto :goto_0

    .line 218
    :pswitch_6
    sget-object p1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    :goto_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 9

    .line 119
    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/a/a;->b(I)Ljava/util/logging/Level;

    move-result-object v1

    .line 120
    iget-object p1, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->a:Ljava/util/logging/Logger;

    invoke-virtual {p1, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 121
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->d:Ljava/lang/String;

    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->b:Ljava/util/ResourceBundle;

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lorg/eclipse/paho/client/mqttv3/a/a;->a(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ResourceBundle;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->e:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v1, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 82
    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/paho/client/mqttv3/a/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7

    const/4 v1, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 74
    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/paho/client/mqttv3/a/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 7

    const/4 v1, 0x5

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 138
    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/paho/client/mqttv3/a/a;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public a(Ljava/util/ResourceBundle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->b:Ljava/util/ResourceBundle;

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->c:Ljava/util/ResourceBundle;

    .line 51
    iput-object p3, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->e:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->f:Ljava/lang/String;

    .line 54
    iget-object p2, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->f:Ljava/lang/String;

    invoke-static {p2}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object p2

    iput-object p2, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->a:Ljava/util/logging/Logger;

    .line 55
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->b:Ljava/util/ResourceBundle;

    .line 56
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->c:Ljava/util/ResourceBundle;

    .line 57
    iget-object p1, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->b:Ljava/util/ResourceBundle;

    const-string p2, "0"

    invoke-virtual {p1, p2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->d:Ljava/lang/String;

    return-void
.end method

.method public a(I)Z
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->a:Ljava/util/logging/Logger;

    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/a/a;->b(I)Ljava/util/logging/Level;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p1

    return p1
.end method

.method public b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 9

    .line 167
    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/a/a;->b(I)Ljava/util/logging/Level;

    move-result-object v1

    .line 168
    iget-object p1, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->a:Ljava/util/logging/Logger;

    invoke-virtual {p1, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 173
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->d:Ljava/lang/String;

    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/a/a;->c:Ljava/util/ResourceBundle;

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lorg/eclipse/paho/client/mqttv3/a/a;->a(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ResourceBundle;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v1, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 130
    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/paho/client/mqttv3/a/a;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7

    const/4 v1, 0x2

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 86
    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/paho/client/mqttv3/a/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v1, 0x6

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 142
    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/paho/client/mqttv3/a/a;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7

    const/4 v1, 0x5

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 134
    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/paho/client/mqttv3/a/a;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method
