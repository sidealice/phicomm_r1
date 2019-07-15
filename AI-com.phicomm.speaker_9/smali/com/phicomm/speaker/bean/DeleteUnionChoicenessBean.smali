.class public Lcom/phicomm/speaker/bean/DeleteUnionChoicenessBean;
.super Ljava/lang/Object;
.source "DeleteUnionChoicenessBean.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x224a501a38614ca6L


# instance fields
.field private cus_sel_id:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCus_sel_id()J
    .locals 2

    .line 20
    iget-wide v0, p0, Lcom/phicomm/speaker/bean/DeleteUnionChoicenessBean;->cus_sel_id:J

    return-wide v0
.end method

.method public setCus_sel_id(J)V
    .locals 0

    .line 24
    iput-wide p1, p0, Lcom/phicomm/speaker/bean/DeleteUnionChoicenessBean;->cus_sel_id:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeleteUnionChoicenessBean{cus_sel_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/phicomm/speaker/bean/DeleteUnionChoicenessBean;->cus_sel_id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
