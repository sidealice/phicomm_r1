.class public Lcn/kuwo/autosdk/bean/NetResource;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public bitrate:I

.field public format:Lcn/kuwo/autosdk/bean/MusicFormat;

.field public quality:Lcn/kuwo/autosdk/bean/MusicQuality;

.field public size:I


# direct methods
.method public constructor <init>(Lcn/kuwo/autosdk/bean/MusicQuality;ILcn/kuwo/autosdk/bean/MusicFormat;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/kuwo/autosdk/bean/NetResource;->quality:Lcn/kuwo/autosdk/bean/MusicQuality;

    iput p2, p0, Lcn/kuwo/autosdk/bean/NetResource;->bitrate:I

    iput-object p3, p0, Lcn/kuwo/autosdk/bean/NetResource;->format:Lcn/kuwo/autosdk/bean/MusicFormat;

    iput p4, p0, Lcn/kuwo/autosdk/bean/NetResource;->size:I

    return-void
.end method


# virtual methods
.method public clone()Lcn/kuwo/autosdk/bean/NetResource;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/kuwo/autosdk/bean/NetResource;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcn/kuwo/autosdk/bean/NetResource;->clone()Lcn/kuwo/autosdk/bean/NetResource;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    instance-of v1, p1, Lcn/kuwo/autosdk/bean/NetResource;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcn/kuwo/autosdk/bean/NetResource;

    iget-object v1, p1, Lcn/kuwo/autosdk/bean/NetResource;->quality:Lcn/kuwo/autosdk/bean/MusicQuality;

    iget-object v2, p0, Lcn/kuwo/autosdk/bean/NetResource;->quality:Lcn/kuwo/autosdk/bean/MusicQuality;

    if-ne v1, v2, :cond_0

    iget v1, p1, Lcn/kuwo/autosdk/bean/NetResource;->bitrate:I

    iget v2, p0, Lcn/kuwo/autosdk/bean/NetResource;->bitrate:I

    if-ne v1, v2, :cond_0

    iget-object v1, p1, Lcn/kuwo/autosdk/bean/NetResource;->format:Lcn/kuwo/autosdk/bean/MusicFormat;

    iget-object v2, p0, Lcn/kuwo/autosdk/bean/NetResource;->format:Lcn/kuwo/autosdk/bean/MusicFormat;

    if-ne v1, v2, :cond_0

    iget v1, p1, Lcn/kuwo/autosdk/bean/NetResource;->size:I

    iget v2, p0, Lcn/kuwo/autosdk/bean/NetResource;->size:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcn/kuwo/autosdk/bean/NetResource;->quality:Lcn/kuwo/autosdk/bean/MusicQuality;

    invoke-virtual {v0}, Lcn/kuwo/autosdk/bean/MusicQuality;->ordinal()I

    move-result v0

    iget v1, p0, Lcn/kuwo/autosdk/bean/NetResource;->bitrate:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcn/kuwo/autosdk/bean/NetResource;->format:Lcn/kuwo/autosdk/bean/MusicFormat;

    invoke-virtual {v1}, Lcn/kuwo/autosdk/bean/MusicFormat;->ordinal()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcn/kuwo/autosdk/bean/NetResource;->size:I

    add-int/2addr v0, v1

    return v0
.end method

.method public isEQ()Z
    .locals 1

    iget-object v0, p0, Lcn/kuwo/autosdk/bean/NetResource;->quality:Lcn/kuwo/autosdk/bean/MusicQuality;

    invoke-virtual {v0}, Lcn/kuwo/autosdk/bean/MusicQuality;->isEQ()Z

    move-result v0

    return v0
.end method

.method public isFLAC()Z
    .locals 1

    iget-object v0, p0, Lcn/kuwo/autosdk/bean/NetResource;->quality:Lcn/kuwo/autosdk/bean/MusicQuality;

    invoke-virtual {v0}, Lcn/kuwo/autosdk/bean/MusicQuality;->isFLAC()Z

    move-result v0

    return v0
.end method
