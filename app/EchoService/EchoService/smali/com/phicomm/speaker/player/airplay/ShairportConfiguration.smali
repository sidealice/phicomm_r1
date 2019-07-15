.class public Lcom/phicomm/speaker/player/airplay/ShairportConfiguration;
.super Ljava/lang/Object;
.source "ShairportConfiguration.java"


# instance fields
.field private final NetworkMac:Ljava/lang/String;

.field private hostname:Ljava/lang/String;

.field private hwAddr:Ljava/lang/String;

.field private port:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-static {}, Lcom/phicomm/speaker/player/airplay/NetworkHelper;->getHardwareAddressString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/player/airplay/ShairportConfiguration;->NetworkMac:Ljava/lang/String;

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Phicomm_R1_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/player/airplay/ShairportConfiguration;->NetworkMac:Ljava/lang/String;

    iget-object v2, p0, Lcom/phicomm/speaker/player/airplay/ShairportConfiguration;->NetworkMac:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    iget-object v3, p0, Lcom/phicomm/speaker/player/airplay/ShairportConfiguration;->NetworkMac:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/player/airplay/ShairportConfiguration;->hostname:Ljava/lang/String;

    .line 12
    invoke-static {}, Lcom/phicomm/speaker/player/airplay/NetworkHelper;->getHardwareAddressString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/player/airplay/ShairportConfiguration;->hwAddr:Ljava/lang/String;

    .line 13
    const/16 v0, 0x138a

    iput v0, p0, Lcom/phicomm/speaker/player/airplay/ShairportConfiguration;->port:I

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "hwAddr"    # Ljava/lang/String;
    .param p3, "port"    # I

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-static {}, Lcom/phicomm/speaker/player/airplay/NetworkHelper;->getHardwareAddressString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/player/airplay/ShairportConfiguration;->NetworkMac:Ljava/lang/String;

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Phicomm_R1_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/player/airplay/ShairportConfiguration;->NetworkMac:Ljava/lang/String;

    iget-object v2, p0, Lcom/phicomm/speaker/player/airplay/ShairportConfiguration;->NetworkMac:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    iget-object v3, p0, Lcom/phicomm/speaker/player/airplay/ShairportConfiguration;->NetworkMac:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/player/airplay/ShairportConfiguration;->hostname:Ljava/lang/String;

    .line 12
    invoke-static {}, Lcom/phicomm/speaker/player/airplay/NetworkHelper;->getHardwareAddressString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/phicomm/speaker/player/airplay/ShairportConfiguration;->hwAddr:Ljava/lang/String;

    .line 13
    const/16 v0, 0x138a

    iput v0, p0, Lcom/phicomm/speaker/player/airplay/ShairportConfiguration;->port:I

    .line 19
    iput-object p1, p0, Lcom/phicomm/speaker/player/airplay/ShairportConfiguration;->hostname:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/phicomm/speaker/player/airplay/ShairportConfiguration;->hwAddr:Ljava/lang/String;

    .line 21
    iput p3, p0, Lcom/phicomm/speaker/player/airplay/ShairportConfiguration;->port:I

    .line 22
    return-void
.end method


# virtual methods
.method public getHostname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/phicomm/speaker/player/airplay/ShairportConfiguration;->hostname:Ljava/lang/String;

    return-object v0
.end method

.method public getHwAddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/phicomm/speaker/player/airplay/ShairportConfiguration;->hwAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/phicomm/speaker/player/airplay/ShairportConfiguration;->port:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShairportConfiguration{hostname=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/player/airplay/ShairportConfiguration;->hostname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hwAddr=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/player/airplay/ShairportConfiguration;->hwAddr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/phicomm/speaker/player/airplay/ShairportConfiguration;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
