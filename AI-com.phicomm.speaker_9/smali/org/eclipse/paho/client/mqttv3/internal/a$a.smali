.class Lorg/eclipse/paho/client/mqttv3/internal/a$a;
.super Ljava/lang/Object;
.source "ClientComms.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/paho/client/mqttv3/internal/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Lorg/eclipse/paho/client/mqttv3/internal/a;

.field b:Ljava/lang/Thread;

.field c:Lorg/eclipse/paho/client/mqttv3/s;

.field d:Lorg/eclipse/paho/client/mqttv3/internal/b/d;

.field final e:Lorg/eclipse/paho/client/mqttv3/internal/a;


# direct methods
.method constructor <init>(Lorg/eclipse/paho/client/mqttv3/internal/a;Lorg/eclipse/paho/client/mqttv3/internal/a;Lorg/eclipse/paho/client/mqttv3/s;Lorg/eclipse/paho/client/mqttv3/internal/b/d;)V
    .locals 1

    .line 643
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/a$a;->e:Lorg/eclipse/paho/client/mqttv3/internal/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 638
    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/a$a;->a:Lorg/eclipse/paho/client/mqttv3/internal/a;

    .line 639
    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/a$a;->b:Ljava/lang/Thread;

    .line 644
    iput-object p2, p0, Lorg/eclipse/paho/client/mqttv3/internal/a$a;->a:Lorg/eclipse/paho/client/mqttv3/internal/a;

    .line 645
    iput-object p3, p0, Lorg/eclipse/paho/client/mqttv3/internal/a$a;->c:Lorg/eclipse/paho/client/mqttv3/s;

    .line 646
    iput-object p4, p0, Lorg/eclipse/paho/client/mqttv3/internal/a$a;->d:Lorg/eclipse/paho/client/mqttv3/internal/b/d;

    .line 647
    new-instance p2, Ljava/lang/Thread;

    new-instance p3, Ljava/lang/StringBuffer;

    const-string p4, "MQTT Con: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/a;->j()Lorg/eclipse/paho/client/mqttv3/d;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/paho/client/mqttv3/d;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object p2, p0, Lorg/eclipse/paho/client/mqttv3/internal/a$a;->b:Ljava/lang/Thread;

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .line 651
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/a$a;->b:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public run()V
    .locals 8

    .line 658
    invoke-static {}, Lorg/eclipse/paho/client/mqttv3/internal/a;->n()Lorg/eclipse/paho/client/mqttv3/a/b;

    move-result-object v0

    invoke-static {}, Lorg/eclipse/paho/client/mqttv3/internal/a;->o()Ljava/lang/String;

    move-result-object v1

    const-string v2, "connectBG:run"

    const-string v3, "220"

    invoke-interface {v0, v1, v2, v3}, Lorg/eclipse/paho/client/mqttv3/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 664
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/a$a;->e:Lorg/eclipse/paho/client/mqttv3/internal/a;

    invoke-static {v1}, Lorg/eclipse/paho/client/mqttv3/internal/a;->a(Lorg/eclipse/paho/client/mqttv3/internal/a;)Lorg/eclipse/paho/client/mqttv3/internal/g;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/internal/g;->b()[Lorg/eclipse/paho/client/mqttv3/o;

    move-result-object v1

    const/4 v2, 0x0

    .line 665
    :goto_0
    array-length v3, v1

    if-lt v2, v3, :cond_0

    .line 670
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/a$a;->e:Lorg/eclipse/paho/client/mqttv3/internal/a;

    invoke-static {v1}, Lorg/eclipse/paho/client/mqttv3/internal/a;->a(Lorg/eclipse/paho/client/mqttv3/internal/a;)Lorg/eclipse/paho/client/mqttv3/internal/g;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/a$a;->c:Lorg/eclipse/paho/client/mqttv3/s;

    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/a$a;->d:Lorg/eclipse/paho/client/mqttv3/internal/b/d;

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/paho/client/mqttv3/internal/g;->a(Lorg/eclipse/paho/client/mqttv3/s;Lorg/eclipse/paho/client/mqttv3/internal/b/u;)V

    .line 675
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/a$a;->e:Lorg/eclipse/paho/client/mqttv3/internal/a;

    invoke-static {v1}, Lorg/eclipse/paho/client/mqttv3/internal/a;->b(Lorg/eclipse/paho/client/mqttv3/internal/a;)[Lorg/eclipse/paho/client/mqttv3/internal/p;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/a$a;->e:Lorg/eclipse/paho/client/mqttv3/internal/a;

    invoke-static {v2}, Lorg/eclipse/paho/client/mqttv3/internal/a;->c(Lorg/eclipse/paho/client/mqttv3/internal/a;)I

    move-result v2

    aget-object v1, v1, v2

    .line 676
    invoke-interface {v1}, Lorg/eclipse/paho/client/mqttv3/internal/p;->a()V

    .line 677
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/a$a;->e:Lorg/eclipse/paho/client/mqttv3/internal/a;

    new-instance v3, Lorg/eclipse/paho/client/mqttv3/internal/e;

    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/a$a;->a:Lorg/eclipse/paho/client/mqttv3/internal/a;

    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/a$a;->e:Lorg/eclipse/paho/client/mqttv3/internal/a;

    invoke-static {v5}, Lorg/eclipse/paho/client/mqttv3/internal/a;->d(Lorg/eclipse/paho/client/mqttv3/internal/a;)Lorg/eclipse/paho/client/mqttv3/internal/c;

    move-result-object v5

    iget-object v6, p0, Lorg/eclipse/paho/client/mqttv3/internal/a$a;->e:Lorg/eclipse/paho/client/mqttv3/internal/a;

    invoke-static {v6}, Lorg/eclipse/paho/client/mqttv3/internal/a;->a(Lorg/eclipse/paho/client/mqttv3/internal/a;)Lorg/eclipse/paho/client/mqttv3/internal/g;

    move-result-object v6

    invoke-interface {v1}, Lorg/eclipse/paho/client/mqttv3/internal/p;->b()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/eclipse/paho/client/mqttv3/internal/e;-><init>(Lorg/eclipse/paho/client/mqttv3/internal/a;Lorg/eclipse/paho/client/mqttv3/internal/c;Lorg/eclipse/paho/client/mqttv3/internal/g;Ljava/io/InputStream;)V

    invoke-static {v2, v3}, Lorg/eclipse/paho/client/mqttv3/internal/a;->a(Lorg/eclipse/paho/client/mqttv3/internal/a;Lorg/eclipse/paho/client/mqttv3/internal/e;)V

    .line 678
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/a$a;->e:Lorg/eclipse/paho/client/mqttv3/internal/a;

    invoke-static {v2}, Lorg/eclipse/paho/client/mqttv3/internal/a;->e(Lorg/eclipse/paho/client/mqttv3/internal/a;)Lorg/eclipse/paho/client/mqttv3/internal/e;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "MQTT Rec: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/a$a;->e:Lorg/eclipse/paho/client/mqttv3/internal/a;

    invoke-virtual {v4}, Lorg/eclipse/paho/client/mqttv3/internal/a;->j()Lorg/eclipse/paho/client/mqttv3/d;

    move-result-object v4

    invoke-interface {v4}, Lorg/eclipse/paho/client/mqttv3/d;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/eclipse/paho/client/mqttv3/internal/e;->a(Ljava/lang/String;)V

    .line 679
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/a$a;->e:Lorg/eclipse/paho/client/mqttv3/internal/a;

    new-instance v3, Lorg/eclipse/paho/client/mqttv3/internal/f;

    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/a$a;->a:Lorg/eclipse/paho/client/mqttv3/internal/a;

    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/a$a;->e:Lorg/eclipse/paho/client/mqttv3/internal/a;

    invoke-static {v5}, Lorg/eclipse/paho/client/mqttv3/internal/a;->d(Lorg/eclipse/paho/client/mqttv3/internal/a;)Lorg/eclipse/paho/client/mqttv3/internal/c;

    move-result-object v5

    iget-object v6, p0, Lorg/eclipse/paho/client/mqttv3/internal/a$a;->e:Lorg/eclipse/paho/client/mqttv3/internal/a;

    invoke-static {v6}, Lorg/eclipse/paho/client/mqttv3/internal/a;->a(Lorg/eclipse/paho/client/mqttv3/internal/a;)Lorg/eclipse/paho/client/mqttv3/internal/g;

    move-result-object v6

    invoke-interface {v1}, Lorg/eclipse/paho/client/mqttv3/internal/p;->c()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v3, v4, v5, v6, v1}, Lorg/eclipse/paho/client/mqttv3/internal/f;-><init>(Lorg/eclipse/paho/client/mqttv3/internal/a;Lorg/eclipse/paho/client/mqttv3/internal/c;Lorg/eclipse/paho/client/mqttv3/internal/g;Ljava/io/OutputStream;)V

    invoke-static {v2, v3}, Lorg/eclipse/paho/client/mqttv3/internal/a;->a(Lorg/eclipse/paho/client/mqttv3/internal/a;Lorg/eclipse/paho/client/mqttv3/internal/f;)V

    .line 680
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/a$a;->e:Lorg/eclipse/paho/client/mqttv3/internal/a;

    invoke-static {v1}, Lorg/eclipse/paho/client/mqttv3/internal/a;->f(Lorg/eclipse/paho/client/mqttv3/internal/a;)Lorg/eclipse/paho/client/mqttv3/internal/f;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "MQTT Snd: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/a$a;->e:Lorg/eclipse/paho/client/mqttv3/internal/a;

    invoke-virtual {v3}, Lorg/eclipse/paho/client/mqttv3/internal/a;->j()Lorg/eclipse/paho/client/mqttv3/d;

    move-result-object v3

    invoke-interface {v3}, Lorg/eclipse/paho/client/mqttv3/d;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/eclipse/paho/client/mqttv3/internal/f;->a(Ljava/lang/String;)V

    .line 681
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/a$a;->e:Lorg/eclipse/paho/client/mqttv3/internal/a;

    invoke-static {v1}, Lorg/eclipse/paho/client/mqttv3/internal/a;->g(Lorg/eclipse/paho/client/mqttv3/internal/a;)Lorg/eclipse/paho/client/mqttv3/internal/d;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "MQTT Call: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/a$a;->e:Lorg/eclipse/paho/client/mqttv3/internal/a;

    invoke-virtual {v3}, Lorg/eclipse/paho/client/mqttv3/internal/a;->j()Lorg/eclipse/paho/client/mqttv3/d;

    move-result-object v3

    invoke-interface {v3}, Lorg/eclipse/paho/client/mqttv3/d;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/eclipse/paho/client/mqttv3/internal/d;->a(Ljava/lang/String;)V

    .line 682
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/a$a;->e:Lorg/eclipse/paho/client/mqttv3/internal/a;

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/a$a;->d:Lorg/eclipse/paho/client/mqttv3/internal/b/d;

    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/a$a;->c:Lorg/eclipse/paho/client/mqttv3/s;

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/paho/client/mqttv3/internal/a;->a(Lorg/eclipse/paho/client/mqttv3/internal/b/u;Lorg/eclipse/paho/client/mqttv3/s;)V

    goto :goto_1

    .line 666
    :cond_0
    aget-object v3, v1, v2

    iget-object v3, v3, Lorg/eclipse/paho/client/mqttv3/o;->a:Lorg/eclipse/paho/client/mqttv3/internal/t;

    invoke-virtual {v3, v0}, Lorg/eclipse/paho/client/mqttv3/internal/t;->a(Lorg/eclipse/paho/client/mqttv3/MqttException;)V
    :try_end_0
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 689
    invoke-static {}, Lorg/eclipse/paho/client/mqttv3/internal/a;->n()Lorg/eclipse/paho/client/mqttv3/a/b;

    move-result-object v1

    invoke-static {}, Lorg/eclipse/paho/client/mqttv3/internal/a;->o()Ljava/lang/String;

    move-result-object v2

    const-string v3, "connectBG:run"

    const-string v4, "209"

    const/4 v5, 0x0

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Lorg/eclipse/paho/client/mqttv3/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 690
    invoke-static {v0}, Lorg/eclipse/paho/client/mqttv3/internal/j;->a(Ljava/lang/Throwable;)Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 685
    invoke-static {}, Lorg/eclipse/paho/client/mqttv3/internal/a;->n()Lorg/eclipse/paho/client/mqttv3/a/b;

    move-result-object v1

    invoke-static {}, Lorg/eclipse/paho/client/mqttv3/internal/a;->o()Ljava/lang/String;

    move-result-object v2

    const-string v3, "connectBG:run"

    const-string v4, "212"

    const/4 v5, 0x0

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Lorg/eclipse/paho/client/mqttv3/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_1
    if-eqz v0, :cond_1

    .line 694
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/a$a;->e:Lorg/eclipse/paho/client/mqttv3/internal/a;

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/a$a;->c:Lorg/eclipse/paho/client/mqttv3/s;

    invoke-virtual {v1, v2, v0}, Lorg/eclipse/paho/client/mqttv3/internal/a;->a(Lorg/eclipse/paho/client/mqttv3/s;Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    :cond_1
    return-void
.end method
