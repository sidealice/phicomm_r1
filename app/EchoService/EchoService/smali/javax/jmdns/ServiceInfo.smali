.class public abstract Ljavax/jmdns/ServiceInfo;
.super Ljava/lang/Object;
.source "ServiceInfo.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/jmdns/ServiceInfo$Fields;
    }
.end annotation


# static fields
.field public static final NO_VALUE:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Ljavax/jmdns/ServiceInfo;->NO_VALUE:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)Ljavax/jmdns/ServiceInfo;
    .locals 9
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "weight"    # I
    .param p4, "priority"    # I
    .param p5, "text"    # Ljava/lang/String;

    .prologue
    .line 120
    new-instance v0, Ljavax/jmdns/impl/ServiceInfoImpl;

    const-string v3, ""

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;)V

    return-object v0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;IIILjava/util/Map;)Ljavax/jmdns/ServiceInfo;
    .locals 9
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "weight"    # I
    .param p4, "priority"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)",
            "Ljavax/jmdns/ServiceInfo;"
        }
    .end annotation

    .prologue
    .line 164
    .local p5, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    new-instance v0, Ljavax/jmdns/impl/ServiceInfoImpl;

    const-string v3, ""

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/util/Map;)V

    return-object v0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;)Ljavax/jmdns/ServiceInfo;
    .locals 9
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "weight"    # I
    .param p4, "priority"    # I
    .param p5, "persistent"    # Z
    .param p6, "text"    # Ljava/lang/String;

    .prologue
    .line 254
    new-instance v0, Ljavax/jmdns/impl/ServiceInfoImpl;

    const-string v3, ""

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;)V

    return-object v0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;IIIZLjava/util/Map;)Ljavax/jmdns/ServiceInfo;
    .locals 9
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "weight"    # I
    .param p4, "priority"    # I
    .param p5, "persistent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIZ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)",
            "Ljavax/jmdns/ServiceInfo;"
        }
    .end annotation

    .prologue
    .line 302
    .local p6, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    new-instance v0, Ljavax/jmdns/impl/ServiceInfoImpl;

    const-string v3, ""

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/util/Map;)V

    return-object v0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;IIIZ[B)Ljavax/jmdns/ServiceInfo;
    .locals 9
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "weight"    # I
    .param p4, "priority"    # I
    .param p5, "persistent"    # Z
    .param p6, "text"    # [B

    .prologue
    .line 350
    new-instance v0, Ljavax/jmdns/impl/ServiceInfoImpl;

    const-string v3, ""

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZ[B)V

    return-object v0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;III[B)Ljavax/jmdns/ServiceInfo;
    .locals 9
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "weight"    # I
    .param p4, "priority"    # I
    .param p5, "text"    # [B

    .prologue
    .line 208
    new-instance v0, Ljavax/jmdns/impl/ServiceInfoImpl;

    const-string v3, ""

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZ[B)V

    return-object v0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljavax/jmdns/ServiceInfo;
    .locals 9
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "text"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 80
    new-instance v0, Ljavax/jmdns/impl/ServiceInfoImpl;

    const-string v3, ""

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move v6, v5

    move v7, v5

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;)V

    return-object v0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)Ljavax/jmdns/ServiceInfo;
    .locals 9
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "subtype"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "weight"    # I
    .param p5, "priority"    # I
    .param p6, "text"    # Ljava/lang/String;

    .prologue
    .line 143
    new-instance v0, Ljavax/jmdns/impl/ServiceInfoImpl;

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;)V

    return-object v0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/util/Map;)Ljavax/jmdns/ServiceInfo;
    .locals 9
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "subtype"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "weight"    # I
    .param p5, "priority"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)",
            "Ljavax/jmdns/ServiceInfo;"
        }
    .end annotation

    .prologue
    .line 187
    .local p6, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    new-instance v0, Ljavax/jmdns/impl/ServiceInfoImpl;

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/util/Map;)V

    return-object v0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;)Ljavax/jmdns/ServiceInfo;
    .locals 9
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "subtype"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "weight"    # I
    .param p5, "priority"    # I
    .param p6, "persistent"    # Z
    .param p7, "text"    # Ljava/lang/String;

    .prologue
    .line 279
    new-instance v0, Ljavax/jmdns/impl/ServiceInfoImpl;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;)V

    return-object v0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/util/Map;)Ljavax/jmdns/ServiceInfo;
    .locals 9
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "subtype"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "weight"    # I
    .param p5, "priority"    # I
    .param p6, "persistent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIIZ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)",
            "Ljavax/jmdns/ServiceInfo;"
        }
    .end annotation

    .prologue
    .line 327
    .local p7, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    new-instance v0, Ljavax/jmdns/impl/ServiceInfoImpl;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/util/Map;)V

    return-object v0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZ[B)Ljavax/jmdns/ServiceInfo;
    .locals 9
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "subtype"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "weight"    # I
    .param p5, "priority"    # I
    .param p6, "persistent"    # Z
    .param p7, "text"    # [B

    .prologue
    .line 375
    new-instance v0, Ljavax/jmdns/impl/ServiceInfoImpl;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZ[B)V

    return-object v0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III[B)Ljavax/jmdns/ServiceInfo;
    .locals 9
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "subtype"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "weight"    # I
    .param p5, "priority"    # I
    .param p6, "text"    # [B

    .prologue
    .line 231
    new-instance v0, Ljavax/jmdns/impl/ServiceInfoImpl;

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZ[B)V

    return-object v0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljavax/jmdns/ServiceInfo;
    .locals 9
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "subtype"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "text"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 99
    new-instance v0, Ljavax/jmdns/impl/ServiceInfoImpl;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v6, v5

    move v7, v5

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;)V

    return-object v0
.end method

.method public static create(Ljava/util/Map;IIIZLjava/util/Map;)Ljavax/jmdns/ServiceInfo;
    .locals 7
    .param p1, "port"    # I
    .param p2, "weight"    # I
    .param p3, "priority"    # I
    .param p4, "persistent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljavax/jmdns/ServiceInfo$Fields;",
            "Ljava/lang/String;",
            ">;IIIZ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)",
            "Ljavax/jmdns/ServiceInfo;"
        }
    .end annotation

    .prologue
    .line 396
    .local p0, "qualifiedNameMap":Ljava/util/Map;, "Ljava/util/Map<Ljavax/jmdns/ServiceInfo$Fields;Ljava/lang/String;>;"
    .local p5, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    new-instance v0, Ljavax/jmdns/impl/ServiceInfoImpl;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljava/util/Map;IIIZLjava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-virtual {p0}, Ljavax/jmdns/ServiceInfo;->clone()Ljavax/jmdns/ServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method public clone()Ljavax/jmdns/ServiceInfo;
    .locals 2

    .prologue
    .line 720
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/jmdns/ServiceInfo;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 723
    :goto_0
    return-object v1

    .line 721
    :catch_0
    move-exception v0

    .line 723
    .local v0, "exception":Ljava/lang/CloneNotSupportedException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public abstract getAddress()Ljava/net/InetAddress;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getApplication()Ljava/lang/String;
.end method

.method public abstract getDomain()Ljava/lang/String;
.end method

.method public abstract getHostAddress()Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getHostAddresses()[Ljava/lang/String;
.end method

.method public abstract getInet4Address()Ljava/net/Inet4Address;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getInet4Addresses()[Ljava/net/Inet4Address;
.end method

.method public abstract getInet6Address()Ljava/net/Inet6Address;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getInet6Addresses()[Ljava/net/Inet6Address;
.end method

.method public abstract getInetAddress()Ljava/net/InetAddress;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getInetAddresses()[Ljava/net/InetAddress;
.end method

.method public abstract getKey()Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNiceTextString()Ljava/lang/String;
.end method

.method public abstract getPort()I
.end method

.method public abstract getPriority()I
.end method

.method public abstract getPropertyBytes(Ljava/lang/String;)[B
.end method

.method public abstract getPropertyNames()Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPropertyString(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getProtocol()Ljava/lang/String;
.end method

.method public abstract getQualifiedName()Ljava/lang/String;
.end method

.method public abstract getQualifiedNameMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljavax/jmdns/ServiceInfo$Fields;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getServer()Ljava/lang/String;
.end method

.method public abstract getSubtype()Ljava/lang/String;
.end method

.method public abstract getTextBytes()[B
.end method

.method public abstract getTextString()Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getType()Ljava/lang/String;
.end method

.method public abstract getTypeWithSubtype()Ljava/lang/String;
.end method

.method public abstract getURL()Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getURL(Ljava/lang/String;)Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getURLs()[Ljava/lang/String;
.end method

.method public abstract getURLs(Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public abstract getWeight()I
.end method

.method public abstract hasData()Z
.end method

.method public abstract isPersistent()Z
.end method

.method public abstract setText(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract setText([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method
