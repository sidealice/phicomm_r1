.class public Lcom/phicomm/speaker/a/i;
.super Ljava/lang/Object;
.source "ChangeSexEvent.java"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/phicomm/speaker/a/i;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/phicomm/speaker/a/i;->a:Ljava/lang/String;

    return-object v0
.end method
