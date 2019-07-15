.class public Lcom/phicomm/speaker/net/resultbean/DeviceListResult$DeviceInfo$RelativeH5urlsBean;
.super Ljava/lang/Object;
.source "DeviceListResult.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/net/resultbean/DeviceListResult$DeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RelativeH5urlsBean"
.end annotation


# instance fields
.field private module:Ljava/lang/String;

.field private module_h5url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getModule()Ljava/lang/String;
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/phicomm/speaker/net/resultbean/DeviceListResult$DeviceInfo$RelativeH5urlsBean;->module:Ljava/lang/String;

    return-object v0
.end method

.method public getModule_h5url()Ljava/lang/String;
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/phicomm/speaker/net/resultbean/DeviceListResult$DeviceInfo$RelativeH5urlsBean;->module_h5url:Ljava/lang/String;

    return-object v0
.end method

.method public setModule(Ljava/lang/String;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/phicomm/speaker/net/resultbean/DeviceListResult$DeviceInfo$RelativeH5urlsBean;->module:Ljava/lang/String;

    return-void
.end method

.method public setModule_h5url(Ljava/lang/String;)V
    .locals 0

    .line 300
    iput-object p1, p0, Lcom/phicomm/speaker/net/resultbean/DeviceListResult$DeviceInfo$RelativeH5urlsBean;->module_h5url:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RelativeH5urlsBean{module_h5url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/phicomm/speaker/net/resultbean/DeviceListResult$DeviceInfo$RelativeH5urlsBean;->module_h5url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", module=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/phicomm/speaker/net/resultbean/DeviceListResult$DeviceInfo$RelativeH5urlsBean;->module:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
