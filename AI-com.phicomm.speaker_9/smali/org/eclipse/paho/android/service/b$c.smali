.class Lorg/eclipse/paho/android/service/b$c;
.super Lorg/eclipse/paho/client/mqttv3/p;
.source "DatabaseMessageStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/paho/android/service/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lorg/eclipse/paho/android/service/b;


# direct methods
.method public constructor <init>(Lorg/eclipse/paho/android/service/b;[B)V
    .locals 0

    .line 445
    iput-object p1, p0, Lorg/eclipse/paho/android/service/b$c;->a:Lorg/eclipse/paho/android/service/b;

    .line 446
    invoke-direct {p0, p2}, Lorg/eclipse/paho/client/mqttv3/p;-><init>([B)V

    return-void
.end method


# virtual methods
.method protected a(Z)V
    .locals 0

    .line 451
    invoke-super {p0, p1}, Lorg/eclipse/paho/client/mqttv3/p;->a(Z)V

    return-void
.end method
