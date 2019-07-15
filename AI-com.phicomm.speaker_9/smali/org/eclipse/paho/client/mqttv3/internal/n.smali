.class public abstract Lorg/eclipse/paho/client/mqttv3/internal/n;
.super Ljava/lang/Object;
.source "MessageCatalog.java"


# static fields
.field private static a:Lorg/eclipse/paho/client/mqttv3/internal/n;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(I)Ljava/lang/String;
    .locals 1

    .line 25
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/n;->a:Lorg/eclipse/paho/client/mqttv3/internal/n;

    if-nez v0, :cond_1

    const-string v0, "java.util.ResourceBundle"

    .line 26
    invoke-static {v0}, Lorg/eclipse/paho/client/mqttv3/internal/j;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "org.eclipse.paho.client.mqttv3.internal.q"

    .line 30
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/paho/client/mqttv3/internal/n;

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/internal/n;->a:Lorg/eclipse/paho/client/mqttv3/internal/n;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, ""

    return-object p0

    :cond_0
    const-string v0, "org.eclipse.paho.client.mqttv3.internal.MIDPCatalog"

    .line 34
    invoke-static {v0}, Lorg/eclipse/paho/client/mqttv3/internal/j;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_1
    const-string v0, "org.eclipse.paho.client.mqttv3.internal.MIDPCatalog"

    .line 36
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/paho/client/mqttv3/internal/n;

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/internal/n;->a:Lorg/eclipse/paho/client/mqttv3/internal/n;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    const-string p0, ""

    return-object p0

    .line 42
    :cond_1
    :goto_0
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/n;->a:Lorg/eclipse/paho/client/mqttv3/internal/n;

    invoke-virtual {v0, p0}, Lorg/eclipse/paho/client/mqttv3/internal/n;->b(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected abstract b(I)Ljava/lang/String;
.end method
