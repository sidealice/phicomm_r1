.class Lorg/eclipse/paho/client/mqttv3/b/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/FileFilter;


# instance fields
.field final a:Lorg/eclipse/paho/client/mqttv3/b/b;


# direct methods
.method constructor <init>(Lorg/eclipse/paho/client/mqttv3/b/b;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/b/d;->a:Lorg/eclipse/paho/client/mqttv3/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".bup"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
