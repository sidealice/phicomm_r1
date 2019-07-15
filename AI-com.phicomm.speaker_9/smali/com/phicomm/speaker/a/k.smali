.class public Lcom/phicomm/speaker/a/k;
.super Ljava/lang/Object;
.source "CommonConfigEvent.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/phicomm/speaker/bean/mqtt/shadow/CommonConfigInfo;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/phicomm/speaker/bean/mqtt/shadow/CommonConfigInfo;Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/a/k;->a(Lcom/phicomm/speaker/bean/mqtt/shadow/CommonConfigInfo;)V

    .line 25
    invoke-virtual {p0, p2}, Lcom/phicomm/speaker/a/k;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/phicomm/speaker/a/k;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/phicomm/speaker/bean/mqtt/shadow/CommonConfigInfo;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/phicomm/speaker/a/k;->b:Lcom/phicomm/speaker/bean/mqtt/shadow/CommonConfigInfo;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/phicomm/speaker/a/k;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/phicomm/speaker/a/k;->c:Z

    return-void
.end method

.method public b()Lcom/phicomm/speaker/bean/mqtt/shadow/CommonConfigInfo;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/phicomm/speaker/a/k;->b:Lcom/phicomm/speaker/bean/mqtt/shadow/CommonConfigInfo;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .line 45
    iget-boolean v0, p0, Lcom/phicomm/speaker/a/k;->c:Z

    return v0
.end method
