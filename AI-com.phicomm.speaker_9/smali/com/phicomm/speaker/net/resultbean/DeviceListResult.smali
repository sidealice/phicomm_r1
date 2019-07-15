.class public Lcom/phicomm/speaker/net/resultbean/DeviceListResult;
.super Ljava/lang/Object;
.source "DeviceListResult.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phicomm/speaker/net/resultbean/DeviceListResult$DeviceInfo;
    }
.end annotation


# instance fields
.field private devices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/phicomm/speaker/net/resultbean/DeviceListResult$DeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private has_next_page:I

.field private latest_timestamp:J

.field private page:I

.field private page_size:I

.field private total_nums:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDevices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/phicomm/speaker/net/resultbean/DeviceListResult$DeviceInfo;",
            ">;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/phicomm/speaker/net/resultbean/DeviceListResult;->devices:Ljava/util/List;

    return-object v0
.end method

.method public getHas_next_page()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/phicomm/speaker/net/resultbean/DeviceListResult;->has_next_page:I

    return v0
.end method

.method public getLatest_timestamp()J
    .locals 2

    .line 46
    iget-wide v0, p0, Lcom/phicomm/speaker/net/resultbean/DeviceListResult;->latest_timestamp:J

    return-wide v0
.end method

.method public getPage()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/phicomm/speaker/net/resultbean/DeviceListResult;->page:I

    return v0
.end method

.method public getPage_size()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/phicomm/speaker/net/resultbean/DeviceListResult;->page_size:I

    return v0
.end method

.method public getTotal_nums()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/phicomm/speaker/net/resultbean/DeviceListResult;->total_nums:I

    return v0
.end method

.method public setDevices(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/phicomm/speaker/net/resultbean/DeviceListResult$DeviceInfo;",
            ">;)V"
        }
    .end annotation

    .line 74
    iput-object p1, p0, Lcom/phicomm/speaker/net/resultbean/DeviceListResult;->devices:Ljava/util/List;

    return-void
.end method

.method public setHas_next_page(I)V
    .locals 0

    .line 34
    iput p1, p0, Lcom/phicomm/speaker/net/resultbean/DeviceListResult;->has_next_page:I

    return-void
.end method

.method public setLatest_timestamp(J)V
    .locals 0

    .line 50
    iput-wide p1, p0, Lcom/phicomm/speaker/net/resultbean/DeviceListResult;->latest_timestamp:J

    return-void
.end method

.method public setPage(I)V
    .locals 0

    .line 66
    iput p1, p0, Lcom/phicomm/speaker/net/resultbean/DeviceListResult;->page:I

    return-void
.end method

.method public setPage_size(I)V
    .locals 0

    .line 58
    iput p1, p0, Lcom/phicomm/speaker/net/resultbean/DeviceListResult;->page_size:I

    return-void
.end method

.method public setTotal_nums(I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/phicomm/speaker/net/resultbean/DeviceListResult;->total_nums:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceListResult{has_next_page="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/phicomm/speaker/net/resultbean/DeviceListResult;->has_next_page:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", total_nums="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/phicomm/speaker/net/resultbean/DeviceListResult;->total_nums:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", latest_timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/phicomm/speaker/net/resultbean/DeviceListResult;->latest_timestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", page_size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/phicomm/speaker/net/resultbean/DeviceListResult;->page_size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", page="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/phicomm/speaker/net/resultbean/DeviceListResult;->page:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", devices="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/phicomm/speaker/net/resultbean/DeviceListResult;->devices:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
