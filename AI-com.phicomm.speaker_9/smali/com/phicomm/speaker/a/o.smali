.class public Lcom/phicomm/speaker/a/o;
.super Ljava/lang/Object;
.source "EditUserDefindeEvent.java"


# instance fields
.field private a:I

.field private b:Lcom/phicomm/speaker/bean/CustumDetailBean;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/phicomm/speaker/a/o;->a:I

    return-void
.end method

.method public constructor <init>(ILcom/phicomm/speaker/bean/CustumDetailBean;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lcom/phicomm/speaker/a/o;->a:I

    .line 26
    iput-object p2, p0, Lcom/phicomm/speaker/a/o;->b:Lcom/phicomm/speaker/bean/CustumDetailBean;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/phicomm/speaker/a/o;->a:I

    return v0
.end method

.method public b()Lcom/phicomm/speaker/bean/CustumDetailBean;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/phicomm/speaker/a/o;->b:Lcom/phicomm/speaker/bean/CustumDetailBean;

    return-object v0
.end method
