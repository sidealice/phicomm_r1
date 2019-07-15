.class public Lcom/phicomm/speaker/e/b/k;
.super Ljava/lang/Object;
.source "PlayModeStickEvent.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-boolean p1, p0, Lcom/phicomm/speaker/e/b/k;->b:Z

    .line 14
    iput-object p2, p0, Lcom/phicomm/speaker/e/b/k;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 18
    iget-boolean v0, p0, Lcom/phicomm/speaker/e/b/k;->b:Z

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/phicomm/speaker/e/b/k;->a:Ljava/lang/String;

    return-object v0
.end method
