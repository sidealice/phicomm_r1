.class Lorg/eclipse/paho/android/service/b$a;
.super Ljava/lang/Object;
.source "DatabaseMessageStore.java"

# interfaces
.implements Lorg/eclipse/paho/android/service/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/paho/android/service/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lorg/eclipse/paho/android/service/b;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lorg/eclipse/paho/client/mqttv3/p;


# direct methods
.method constructor <init>(Lorg/eclipse/paho/android/service/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/p;)V
    .locals 0

    .line 413
    iput-object p1, p0, Lorg/eclipse/paho/android/service/b$a;->a:Lorg/eclipse/paho/android/service/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 414
    iput-object p2, p0, Lorg/eclipse/paho/android/service/b$a;->b:Ljava/lang/String;

    .line 415
    iput-object p4, p0, Lorg/eclipse/paho/android/service/b$a;->c:Ljava/lang/String;

    .line 416
    iput-object p5, p0, Lorg/eclipse/paho/android/service/b$a;->d:Lorg/eclipse/paho/client/mqttv3/p;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 421
    iget-object v0, p0, Lorg/eclipse/paho/android/service/b$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 431
    iget-object v0, p0, Lorg/eclipse/paho/android/service/b$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lorg/eclipse/paho/client/mqttv3/p;
    .locals 1

    .line 436
    iget-object v0, p0, Lorg/eclipse/paho/android/service/b$a;->d:Lorg/eclipse/paho/client/mqttv3/p;

    return-object v0
.end method
