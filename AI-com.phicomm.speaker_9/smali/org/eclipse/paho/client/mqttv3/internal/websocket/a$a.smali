.class public Lorg/eclipse/paho/client/mqttv3/internal/websocket/a$a;
.super Ljava/util/prefs/AbstractPreferences;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/paho/client/mqttv3/internal/websocket/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final a:Lorg/eclipse/paho/client/mqttv3/internal/websocket/a;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/eclipse/paho/client/mqttv3/internal/websocket/a;)V
    .locals 1

    .line 43
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/a$a;->a:Lorg/eclipse/paho/client/mqttv3/internal/websocket/a;

    const-string p1, ""

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, v0, p1}, Ljava/util/prefs/AbstractPreferences;-><init>(Ljava/util/prefs/AbstractPreferences;Ljava/lang/String;)V

    .line 41
    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/a$a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/a$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method protected childSpi(Ljava/lang/String;)Ljava/util/prefs/AbstractPreferences;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected childrenNamesSpi()[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected flushSpi()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    return-void
.end method

.method protected getSpi(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected keysSpi()[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected putSpi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p2, p0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/a$a;->b:Ljava/lang/String;

    return-void
.end method

.method protected removeNodeSpi()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    return-void
.end method

.method protected removeSpi(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected syncSpi()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    return-void
.end method
