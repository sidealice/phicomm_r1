.class public Lorg/eclipse/paho/client/mqttv3/internal/h;
.super Ljava/lang/Object;
.source "ConnectActionListener.java"

# interfaces
.implements Lorg/eclipse/paho/client/mqttv3/c;


# instance fields
.field private a:Lorg/eclipse/paho/client/mqttv3/m;

.field private b:Lorg/eclipse/paho/client/mqttv3/h;

.field private c:Lorg/eclipse/paho/client/mqttv3/internal/a;

.field private d:Lorg/eclipse/paho/client/mqttv3/n;

.field private e:Lorg/eclipse/paho/client/mqttv3/s;

.field private f:Ljava/lang/Object;

.field private g:Lorg/eclipse/paho/client/mqttv3/c;

.field private h:I

.field private i:Lorg/eclipse/paho/client/mqttv3/l;

.field private j:Z


# direct methods
.method public constructor <init>(Lorg/eclipse/paho/client/mqttv3/h;Lorg/eclipse/paho/client/mqttv3/m;Lorg/eclipse/paho/client/mqttv3/internal/a;Lorg/eclipse/paho/client/mqttv3/n;Lorg/eclipse/paho/client/mqttv3/s;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/c;Z)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p2, p0, Lorg/eclipse/paho/client/mqttv3/internal/h;->a:Lorg/eclipse/paho/client/mqttv3/m;

    .line 72
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/h;->b:Lorg/eclipse/paho/client/mqttv3/h;

    .line 73
    iput-object p3, p0, Lorg/eclipse/paho/client/mqttv3/internal/h;->c:Lorg/eclipse/paho/client/mqttv3/internal/a;

    .line 74
    iput-object p4, p0, Lorg/eclipse/paho/client/mqttv3/internal/h;->d:Lorg/eclipse/paho/client/mqttv3/n;

    .line 75
    iput-object p5, p0, Lorg/eclipse/paho/client/mqttv3/internal/h;->e:Lorg/eclipse/paho/client/mqttv3/s;

    .line 76
    iput-object p6, p0, Lorg/eclipse/paho/client/mqttv3/internal/h;->f:Ljava/lang/Object;

    .line 77
    iput-object p7, p0, Lorg/eclipse/paho/client/mqttv3/internal/h;->g:Lorg/eclipse/paho/client/mqttv3/c;

    .line 78
    invoke-virtual {p4}, Lorg/eclipse/paho/client/mqttv3/n;->f()I

    move-result p1

    iput p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/h;->h:I

    .line 79
    iput-boolean p8, p0, Lorg/eclipse/paho/client/mqttv3/internal/h;->j:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;
        }
    .end annotation

    .line 172
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/s;

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/h;->b:Lorg/eclipse/paho/client/mqttv3/h;

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/h;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/eclipse/paho/client/mqttv3/s;-><init>(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v0, p0}, Lorg/eclipse/paho/client/mqttv3/s;->a(Lorg/eclipse/paho/client/mqttv3/c;)V

    .line 174
    invoke-virtual {v0, p0}, Lorg/eclipse/paho/client/mqttv3/s;->a(Ljava/lang/Object;)V

    .line 176
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/h;->a:Lorg/eclipse/paho/client/mqttv3/m;

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/h;->b:Lorg/eclipse/paho/client/mqttv3/h;

    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/h;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/h;->b:Lorg/eclipse/paho/client/mqttv3/h;

    invoke-virtual {v3}, Lorg/eclipse/paho/client/mqttv3/h;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/eclipse/paho/client/mqttv3/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/h;->d:Lorg/eclipse/paho/client/mqttv3/n;

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/n;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/h;->a:Lorg/eclipse/paho/client/mqttv3/m;

    invoke-interface {v1}, Lorg/eclipse/paho/client/mqttv3/m;->c()V

    .line 182
    :cond_0
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/h;->d:Lorg/eclipse/paho/client/mqttv3/n;

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/n;->f()I

    move-result v1

    if-nez v1, :cond_1

    .line 183
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/h;->d:Lorg/eclipse/paho/client/mqttv3/n;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/eclipse/paho/client/mqttv3/n;->d(I)V

    .line 187
    :cond_1
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/h;->c:Lorg/eclipse/paho/client/mqttv3/internal/a;

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/h;->d:Lorg/eclipse/paho/client/mqttv3/n;

    invoke-virtual {v1, v2, v0}, Lorg/eclipse/paho/client/mqttv3/internal/a;->a(Lorg/eclipse/paho/client/mqttv3/n;Lorg/eclipse/paho/client/mqttv3/s;)V
    :try_end_0
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 190
    invoke-virtual {p0, v0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/h;->a(Lorg/eclipse/paho/client/mqttv3/g;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public a(Lorg/eclipse/paho/client/mqttv3/g;)V
    .locals 2

    .line 88
    iget v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/h;->h:I

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/h;->d:Lorg/eclipse/paho/client/mqttv3/n;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/client/mqttv3/n;->d(I)V

    .line 91
    :cond_0
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/h;->e:Lorg/eclipse/paho/client/mqttv3/s;

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/s;->a:Lorg/eclipse/paho/client/mqttv3/internal/t;

    invoke-interface {p1}, Lorg/eclipse/paho/client/mqttv3/g;->h()Lorg/eclipse/paho/client/mqttv3/internal/b/u;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/paho/client/mqttv3/internal/t;->a(Lorg/eclipse/paho/client/mqttv3/internal/b/u;Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    .line 92
    iget-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/h;->e:Lorg/eclipse/paho/client/mqttv3/s;

    iget-object p1, p1, Lorg/eclipse/paho/client/mqttv3/s;->a:Lorg/eclipse/paho/client/mqttv3/internal/t;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/t;->g()V

    .line 93
    iget-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/h;->e:Lorg/eclipse/paho/client/mqttv3/s;

    iget-object p1, p1, Lorg/eclipse/paho/client/mqttv3/s;->a:Lorg/eclipse/paho/client/mqttv3/internal/t;

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/h;->b:Lorg/eclipse/paho/client/mqttv3/h;

    invoke-virtual {p1, v0}, Lorg/eclipse/paho/client/mqttv3/internal/t;->a(Lorg/eclipse/paho/client/mqttv3/d;)V

    .line 95
    iget-boolean p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/h;->j:Z

    if-eqz p1, :cond_1

    .line 96
    iget-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/h;->c:Lorg/eclipse/paho/client/mqttv3/internal/a;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/a;->m()V

    .line 99
    :cond_1
    iget-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/h;->g:Lorg/eclipse/paho/client/mqttv3/c;

    if-eqz p1, :cond_2

    .line 100
    iget-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/h;->e:Lorg/eclipse/paho/client/mqttv3/s;

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/h;->f:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lorg/eclipse/paho/client/mqttv3/s;->a(Ljava/lang/Object;)V

    .line 101
    iget-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/h;->g:Lorg/eclipse/paho/client/mqttv3/c;

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/h;->e:Lorg/eclipse/paho/client/mqttv3/s;

    invoke-interface {p1, v0}, Lorg/eclipse/paho/client/mqttv3/c;->a(Lorg/eclipse/paho/client/mqttv3/g;)V

    .line 104
    :cond_2
    iget-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/h;->i:Lorg/eclipse/paho/client/mqttv3/l;

    if-eqz p1, :cond_3

    .line 105
    iget-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/h;->c:Lorg/eclipse/paho/client/mqttv3/internal/a;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/a;->i()[Lorg/eclipse/paho/client/mqttv3/internal/p;

    move-result-object p1

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/h;->c:Lorg/eclipse/paho/client/mqttv3/internal/a;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/a;->h()I

    move-result v0

    aget-object p1, p1, v0

    invoke-interface {p1}, Lorg/eclipse/paho/client/mqttv3/internal/p;->e()Ljava/lang/String;

    move-result-object p1

    .line 106
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/h;->i:Lorg/eclipse/paho/client/mqttv3/l;

    iget-boolean v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/h;->j:Z

    invoke-interface {v0, v1, p1}, Lorg/eclipse/paho/client/mqttv3/l;->a(ZLjava/lang/String;)V

    :cond_3
    return-void
.end method

.method public a(Lorg/eclipse/paho/client/mqttv3/g;Ljava/lang/Throwable;)V
    .locals 3

    .line 121
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/h;->c:Lorg/eclipse/paho/client/mqttv3/internal/a;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/a;->i()[Lorg/eclipse/paho/client/mqttv3/internal/p;

    move-result-object v0

    const/4 v1, 0x4

    array-length v0, v0

    .line 122
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/h;->c:Lorg/eclipse/paho/client/mqttv3/internal/a;

    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/internal/a;->h()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-lt v2, v0, :cond_3

    .line 124
    iget v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/h;->h:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/h;->d:Lorg/eclipse/paho/client/mqttv3/n;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/n;->f()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 146
    :cond_0
    iget p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/h;->h:I

    if-nez p1, :cond_1

    .line 147
    iget-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/h;->d:Lorg/eclipse/paho/client/mqttv3/n;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/eclipse/paho/client/mqttv3/n;->d(I)V

    .line 150
    :cond_1
    instance-of p1, p2, Lorg/eclipse/paho/client/mqttv3/MqttException;

    if-eqz p1, :cond_2

    .line 151
    move-object p1, p2

    check-cast p1, Lorg/eclipse/paho/client/mqttv3/MqttException;

    goto :goto_0

    .line 154
    :cond_2
    new-instance p1, Lorg/eclipse/paho/client/mqttv3/MqttException;

    invoke-direct {p1, p2}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(Ljava/lang/Throwable;)V

    .line 156
    :goto_0
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/h;->e:Lorg/eclipse/paho/client/mqttv3/s;

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/s;->a:Lorg/eclipse/paho/client/mqttv3/internal/t;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lorg/eclipse/paho/client/mqttv3/internal/t;->a(Lorg/eclipse/paho/client/mqttv3/internal/b/u;Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    .line 157
    iget-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/h;->e:Lorg/eclipse/paho/client/mqttv3/s;

    iget-object p1, p1, Lorg/eclipse/paho/client/mqttv3/s;->a:Lorg/eclipse/paho/client/mqttv3/internal/t;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/t;->g()V

    .line 158
    iget-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/h;->e:Lorg/eclipse/paho/client/mqttv3/s;

    iget-object p1, p1, Lorg/eclipse/paho/client/mqttv3/s;->a:Lorg/eclipse/paho/client/mqttv3/internal/t;

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/h;->b:Lorg/eclipse/paho/client/mqttv3/h;

    invoke-virtual {p1, v0}, Lorg/eclipse/paho/client/mqttv3/internal/t;->a(Lorg/eclipse/paho/client/mqttv3/d;)V

    .line 160
    iget-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/h;->g:Lorg/eclipse/paho/client/mqttv3/c;

    if-eqz p1, :cond_6

    .line 161
    iget-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/h;->e:Lorg/eclipse/paho/client/mqttv3/s;

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/h;->f:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lorg/eclipse/paho/client/mqttv3/s;->a(Ljava/lang/Object;)V

    .line 162
    iget-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/h;->g:Lorg/eclipse/paho/client/mqttv3/c;

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/h;->e:Lorg/eclipse/paho/client/mqttv3/s;

    invoke-interface {p1, v0, p2}, Lorg/eclipse/paho/client/mqttv3/c;->a(Lorg/eclipse/paho/client/mqttv3/g;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 126
    :cond_3
    :goto_1
    iget p2, p0, Lorg/eclipse/paho/client/mqttv3/internal/h;->h:I

    if-nez p2, :cond_5

    .line 127
    iget-object p2, p0, Lorg/eclipse/paho/client/mqttv3/internal/h;->d:Lorg/eclipse/paho/client/mqttv3/n;

    invoke-virtual {p2}, Lorg/eclipse/paho/client/mqttv3/n;->f()I

    move-result p2

    if-ne p2, v1, :cond_4

    .line 128
    iget-object p2, p0, Lorg/eclipse/paho/client/mqttv3/internal/h;->d:Lorg/eclipse/paho/client/mqttv3/n;

    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Lorg/eclipse/paho/client/mqttv3/n;->d(I)V

    goto :goto_2

    .line 131
    :cond_4
    iget-object p2, p0, Lorg/eclipse/paho/client/mqttv3/internal/h;->d:Lorg/eclipse/paho/client/mqttv3/n;

    invoke-virtual {p2, v1}, Lorg/eclipse/paho/client/mqttv3/n;->d(I)V

    .line 132
    iget-object p2, p0, Lorg/eclipse/paho/client/mqttv3/internal/h;->c:Lorg/eclipse/paho/client/mqttv3/internal/a;

    invoke-virtual {p2, v2}, Lorg/eclipse/paho/client/mqttv3/internal/a;->a(I)V

    goto :goto_2

    .line 136
    :cond_5
    iget-object p2, p0, Lorg/eclipse/paho/client/mqttv3/internal/h;->c:Lorg/eclipse/paho/client/mqttv3/internal/a;

    invoke-virtual {p2, v2}, Lorg/eclipse/paho/client/mqttv3/internal/a;->a(I)V

    .line 139
    :goto_2
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/h;->a()V
    :try_end_0
    .catch Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p2

    .line 142
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/paho/client/mqttv3/internal/h;->a(Lorg/eclipse/paho/client/mqttv3/g;Ljava/lang/Throwable;)V

    :cond_6
    :goto_3
    return-void
.end method

.method public a(Lorg/eclipse/paho/client/mqttv3/l;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/h;->i:Lorg/eclipse/paho/client/mqttv3/l;

    return-void
.end method
