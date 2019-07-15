.class public Ljavax/jmdns/impl/ServiceInfoImpl;
.super Ljavax/jmdns/ServiceInfo;
.source "ServiceInfoImpl.java"

# interfaces
.implements Ljavax/jmdns/impl/DNSListener;
.implements Ljavax/jmdns/impl/DNSStatefulObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/jmdns/impl/ServiceInfoImpl$1;,
        Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;,
        Ljavax/jmdns/impl/ServiceInfoImpl$Delegate;
    }
.end annotation


# static fields
.field private static logger:Ljava/util/logging/Logger;


# instance fields
.field private _application:Ljava/lang/String;

.field private _delegate:Ljavax/jmdns/impl/ServiceInfoImpl$Delegate;

.field private _domain:Ljava/lang/String;

.field private final _ipv4Addresses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/net/Inet4Address;",
            ">;"
        }
    .end annotation
.end field

.field private final _ipv6Addresses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/net/Inet6Address;",
            ">;"
        }
    .end annotation
.end field

.field private transient _key:Ljava/lang/String;

.field private _name:Ljava/lang/String;

.field private _needTextAnnouncing:Z

.field private _persistent:Z

.field private _port:I

.field private _priority:I

.field private _props:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private _protocol:Ljava/lang/String;

.field private _server:Ljava/lang/String;

.field private final _state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

.field private _subtype:Ljava/lang/String;

.field private _text:[B

.field private _weight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Ljavax/jmdns/impl/ServiceInfoImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljavax/jmdns/impl/ServiceInfoImpl;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;)V
    .locals 10
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "subtype"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "weight"    # I
    .param p6, "priority"    # I
    .param p7, "persistent"    # Z
    .param p8, "text"    # Ljava/lang/String;

    .prologue
    .line 128
    invoke-static {p1, p2, p3}, Ljavax/jmdns/impl/ServiceInfoImpl;->decodeQualifiedNameMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    const/4 v7, 0x0

    check-cast v7, [B

    move-object v1, p0

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    invoke-direct/range {v1 .. v7}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljava/util/Map;IIIZ[B)V

    .line 129
    move-object/from16 v0, p8

    iput-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_server:Ljava/lang/String;

    .line 131
    :try_start_0
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-virtual/range {p8 .. p8}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v9, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 132
    .local v9, "out":Ljava/io/ByteArrayOutputStream;
    move-object/from16 v0, p8

    invoke-static {v9, v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->writeUTF(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 133
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_text:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    return-void

    .line 134
    .end local v9    # "out":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v8

    .line 135
    .local v8, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZLjava/util/Map;)V
    .locals 7
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "subtype"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "weight"    # I
    .param p6, "priority"    # I
    .param p7, "persistent"    # Z
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
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 151
    .local p8, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-static {p1, p2, p3}, Ljavax/jmdns/impl/ServiceInfoImpl;->decodeQualifiedNameMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p8}, Ljavax/jmdns/impl/ServiceInfoImpl;->textFromProperties(Ljava/util/Map;)[B

    move-result-object v6

    move-object v0, p0

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    invoke-direct/range {v0 .. v6}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljava/util/Map;IIIZ[B)V

    .line 152
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZ[B)V
    .locals 7
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "subtype"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "weight"    # I
    .param p6, "priority"    # I
    .param p7, "persistent"    # Z
    .param p8, "text"    # [B

    .prologue
    .line 166
    invoke-static {p1, p2, p3}, Ljavax/jmdns/impl/ServiceInfoImpl;->decodeQualifiedNameMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    move-object v0, p0

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    move-object v6, p8

    invoke-direct/range {v0 .. v6}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljava/util/Map;IIIZ[B)V

    .line 167
    return-void
.end method

.method constructor <init>(Ljava/util/Map;IIIZLjava/lang/String;)V
    .locals 9
    .param p2, "port"    # I
    .param p3, "weight"    # I
    .param p4, "priority"    # I
    .param p5, "persistent"    # Z
    .param p6, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljavax/jmdns/ServiceInfo$Fields;",
            "Ljava/lang/String;",
            ">;IIIZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 174
    .local p1, "qualifiedNameMap":Ljava/util/Map;, "Ljava/util/Map<Ljavax/jmdns/ServiceInfo$Fields;Ljava/lang/String;>;"
    const/4 v6, 0x0

    check-cast v6, [B

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljava/util/Map;IIIZ[B)V

    .line 175
    iput-object p6, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_server:Ljava/lang/String;

    .line 177
    :try_start_0
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v8, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 178
    .local v8, "out":Ljava/io/ByteArrayOutputStream;
    invoke-static {v8, p6}, Ljavax/jmdns/impl/ServiceInfoImpl;->writeUTF(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 179
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_text:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    return-void

    .line 180
    .end local v8    # "out":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v7

    .line 181
    .local v7, "e":Ljava/io/IOException;
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/util/Map;IIIZLjava/util/Map;)V
    .locals 7
    .param p2, "port"    # I
    .param p3, "weight"    # I
    .param p4, "priority"    # I
    .param p5, "persistent"    # Z
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
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 170
    .local p1, "qualifiedNameMap":Ljava/util/Map;, "Ljava/util/Map<Ljavax/jmdns/ServiceInfo$Fields;Ljava/lang/String;>;"
    .local p6, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-static {p6}, Ljavax/jmdns/impl/ServiceInfoImpl;->textFromProperties(Ljava/util/Map;)[B

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljava/util/Map;IIIZ[B)V

    .line 171
    return-void
.end method

.method constructor <init>(Ljava/util/Map;IIIZ[B)V
    .locals 2
    .param p2, "port"    # I
    .param p3, "weight"    # I
    .param p4, "priority"    # I
    .param p5, "persistent"    # Z
    .param p6, "text"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljavax/jmdns/ServiceInfo$Fields;",
            "Ljava/lang/String;",
            ">;IIIZ[B)V"
        }
    .end annotation

    .prologue
    .line 185
    .local p1, "qualifiedNameMap":Ljava/util/Map;, "Ljava/util/Map<Ljavax/jmdns/ServiceInfo$Fields;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljavax/jmdns/ServiceInfo;-><init>()V

    .line 186
    invoke-static {p1}, Ljavax/jmdns/impl/ServiceInfoImpl;->checkQualifiedNameMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 188
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljavax/jmdns/ServiceInfo$Fields;Ljava/lang/String;>;"
    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Domain:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_domain:Ljava/lang/String;

    .line 189
    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Protocol:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_protocol:Ljava/lang/String;

    .line 190
    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Application:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_application:Ljava/lang/String;

    .line 191
    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Instance:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_name:Ljava/lang/String;

    .line 192
    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Subtype:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_subtype:Ljava/lang/String;

    .line 194
    iput p2, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_port:I

    .line 195
    iput p3, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_weight:I

    .line 196
    iput p4, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_priority:I

    .line 197
    iput-object p6, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_text:[B

    .line 198
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljavax/jmdns/impl/ServiceInfoImpl;->setNeedTextAnnouncing(Z)V

    .line 199
    new-instance v1, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    invoke-direct {v1, p0}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;-><init>(Ljavax/jmdns/impl/ServiceInfoImpl;)V

    iput-object v1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    .line 200
    iput-boolean p5, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_persistent:Z

    .line 201
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv4Addresses:Ljava/util/Set;

    .line 202
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv6Addresses:Ljava/util/Set;

    .line 203
    return-void
.end method

.method constructor <init>(Ljavax/jmdns/ServiceInfo;)V
    .locals 7
    .param p1, "info"    # Ljavax/jmdns/ServiceInfo;

    .prologue
    .line 210
    invoke-direct {p0}, Ljavax/jmdns/ServiceInfo;-><init>()V

    .line 211
    new-instance v6, Ljava/util/LinkedHashSet;

    invoke-direct {v6}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {v6}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v6

    iput-object v6, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv4Addresses:Ljava/util/Set;

    .line 212
    new-instance v6, Ljava/util/LinkedHashSet;

    invoke-direct {v6}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {v6}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v6

    iput-object v6, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv6Addresses:Ljava/util/Set;

    .line 213
    if-eqz p1, :cond_1

    .line 214
    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->getDomain()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_domain:Ljava/lang/String;

    .line 215
    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->getProtocol()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_protocol:Ljava/lang/String;

    .line 216
    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->getApplication()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_application:Ljava/lang/String;

    .line 217
    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->getName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_name:Ljava/lang/String;

    .line 218
    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->getSubtype()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_subtype:Ljava/lang/String;

    .line 219
    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->getPort()I

    move-result v6

    iput v6, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_port:I

    .line 220
    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->getWeight()I

    move-result v6

    iput v6, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_weight:I

    .line 221
    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->getPriority()I

    move-result v6

    iput v6, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_priority:I

    .line 222
    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->getTextBytes()[B

    move-result-object v6

    iput-object v6, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_text:[B

    .line 223
    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->isPersistent()Z

    move-result v6

    iput-boolean v6, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_persistent:Z

    .line 224
    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->getInet6Addresses()[Ljava/net/Inet6Address;

    move-result-object v4

    .line 225
    .local v4, "ipv6Addresses":[Ljava/net/Inet6Address;
    move-object v1, v4

    .local v1, "arr$":[Ljava/net/Inet6Address;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v0, v1, v2

    .line 226
    .local v0, "address":Ljava/net/Inet6Address;
    iget-object v6, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv6Addresses:Ljava/util/Set;

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 225
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 228
    .end local v0    # "address":Ljava/net/Inet6Address;
    :cond_0
    invoke-virtual {p1}, Ljavax/jmdns/ServiceInfo;->getInet4Addresses()[Ljava/net/Inet4Address;

    move-result-object v3

    .line 229
    .local v3, "ipv4Addresses":[Ljava/net/Inet4Address;
    move-object v1, v3

    .local v1, "arr$":[Ljava/net/Inet4Address;
    array-length v5, v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v5, :cond_1

    aget-object v0, v1, v2

    .line 230
    .local v0, "address":Ljava/net/Inet4Address;
    iget-object v6, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv4Addresses:Ljava/util/Set;

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 229
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 233
    .end local v0    # "address":Ljava/net/Inet4Address;
    .end local v1    # "arr$":[Ljava/net/Inet4Address;
    .end local v2    # "i$":I
    .end local v3    # "ipv4Addresses":[Ljava/net/Inet4Address;
    .end local v4    # "ipv6Addresses":[Ljava/net/Inet6Address;
    .end local v5    # "len$":I
    :cond_1
    new-instance v6, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    invoke-direct {v6, p0}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;-><init>(Ljavax/jmdns/impl/ServiceInfoImpl;)V

    iput-object v6, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    .line 234
    return-void
.end method

.method protected static checkQualifiedNameMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljavax/jmdns/ServiceInfo$Fields;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljavax/jmdns/ServiceInfo$Fields;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 313
    .local p0, "qualifiedNameMap":Ljava/util/Map;, "Ljava/util/Map<Ljavax/jmdns/ServiceInfo$Fields;Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashMap;

    const/4 v6, 0x5

    invoke-direct {v1, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 316
    .local v1, "checkedQualifiedNameMap":Ljava/util/Map;, "Ljava/util/Map<Ljavax/jmdns/ServiceInfo$Fields;Ljava/lang/String;>;"
    sget-object v6, Ljavax/jmdns/ServiceInfo$Fields;->Domain:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {p0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    sget-object v6, Ljavax/jmdns/ServiceInfo$Fields;->Domain:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {p0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v2, v6

    .line 317
    .local v2, "domain":Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 318
    :cond_0
    const-string v2, "local"

    .line 320
    :cond_1
    invoke-static {v2}, Ljavax/jmdns/impl/ServiceInfoImpl;->removeSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 321
    sget-object v6, Ljavax/jmdns/ServiceInfo$Fields;->Domain:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    sget-object v6, Ljavax/jmdns/ServiceInfo$Fields;->Protocol:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {p0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    sget-object v6, Ljavax/jmdns/ServiceInfo$Fields;->Protocol:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {p0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v4, v6

    .line 324
    .local v4, "protocol":Ljava/lang/String;
    :goto_1
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_3

    .line 325
    :cond_2
    const-string v4, "tcp"

    .line 327
    :cond_3
    invoke-static {v4}, Ljavax/jmdns/impl/ServiceInfoImpl;->removeSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 328
    sget-object v6, Ljavax/jmdns/ServiceInfo$Fields;->Protocol:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v1, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    sget-object v6, Ljavax/jmdns/ServiceInfo$Fields;->Application:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {p0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    sget-object v6, Ljavax/jmdns/ServiceInfo$Fields;->Application:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {p0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v0, v6

    .line 331
    .local v0, "application":Ljava/lang/String;
    :goto_2
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_5

    .line 332
    :cond_4
    const-string v0, ""

    .line 334
    :cond_5
    invoke-static {v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->removeSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 335
    sget-object v6, Ljavax/jmdns/ServiceInfo$Fields;->Application:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v1, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    sget-object v6, Ljavax/jmdns/ServiceInfo$Fields;->Instance:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {p0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    sget-object v6, Ljavax/jmdns/ServiceInfo$Fields;->Instance:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {p0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v3, v6

    .line 338
    .local v3, "instance":Ljava/lang/String;
    :goto_3
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_7

    .line 339
    :cond_6
    const-string v3, ""

    .line 342
    :cond_7
    invoke-static {v3}, Ljavax/jmdns/impl/ServiceInfoImpl;->removeSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 343
    sget-object v6, Ljavax/jmdns/ServiceInfo$Fields;->Instance:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v1, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    sget-object v6, Ljavax/jmdns/ServiceInfo$Fields;->Subtype:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {p0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    sget-object v6, Ljavax/jmdns/ServiceInfo$Fields;->Subtype:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {p0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v5, v6

    .line 346
    .local v5, "subtype":Ljava/lang/String;
    :goto_4
    if-eqz v5, :cond_8

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_9

    .line 347
    :cond_8
    const-string v5, ""

    .line 349
    :cond_9
    invoke-static {v5}, Ljavax/jmdns/impl/ServiceInfoImpl;->removeSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 350
    sget-object v6, Ljavax/jmdns/ServiceInfo$Fields;->Subtype:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    return-object v1

    .line 316
    .end local v0    # "application":Ljava/lang/String;
    .end local v2    # "domain":Ljava/lang/String;
    .end local v3    # "instance":Ljava/lang/String;
    .end local v4    # "protocol":Ljava/lang/String;
    .end local v5    # "subtype":Ljava/lang/String;
    :cond_a
    const-string v2, "local"

    goto/16 :goto_0

    .line 323
    .restart local v2    # "domain":Ljava/lang/String;
    :cond_b
    const-string v4, "tcp"

    goto/16 :goto_1

    .line 330
    .restart local v4    # "protocol":Ljava/lang/String;
    :cond_c
    const-string v0, ""

    goto :goto_2

    .line 337
    .restart local v0    # "application":Ljava/lang/String;
    :cond_d
    const-string v3, ""

    goto :goto_3

    .line 345
    .restart local v3    # "instance":Ljava/lang/String;
    :cond_e
    const-string v5, ""

    goto :goto_4
.end method

.method public static decodeQualifiedNameMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "subtype"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljavax/jmdns/ServiceInfo$Fields;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 237
    invoke-static {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->decodeQualifiedNameMapForType(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 239
    .local v0, "qualifiedNameMap":Ljava/util/Map;, "Ljava/util/Map<Ljavax/jmdns/ServiceInfo$Fields;Ljava/lang/String;>;"
    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Instance:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Subtype:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    invoke-static {v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->checkQualifiedNameMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method public static decodeQualifiedNameMapForType(Ljava/lang/String;)Ljava/util/Map;
    .locals 15
    .param p0, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljavax/jmdns/ServiceInfo$Fields;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v14, 0x2e

    const/4 v12, 0x0

    .line 248
    move-object v2, p0

    .line 250
    .local v2, "casePreservedType":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, "aType":Ljava/lang/String;
    move-object v1, v0

    .line 252
    .local v1, "application":Ljava/lang/String;
    const-string v7, ""

    .line 253
    .local v7, "protocol":Ljava/lang/String;
    const-string v10, ""

    .line 254
    .local v10, "subtype":Ljava/lang/String;
    const-string v6, ""

    .line 255
    .local v6, "name":Ljava/lang/String;
    const-string v3, ""

    .line 257
    .local v3, "domain":Ljava/lang/String;
    const-string v11, "in-addr.arpa"

    invoke-virtual {v0, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "ip6.arpa"

    invoke-virtual {v0, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 258
    :cond_0
    const-string v11, "in-addr.arpa"

    invoke-virtual {v0, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    const-string v11, "in-addr.arpa"

    invoke-virtual {v0, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 259
    .local v5, "index":I
    :goto_0
    invoke-virtual {v2, v12, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljavax/jmdns/impl/ServiceInfoImpl;->removeSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 260
    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 261
    const-string v1, ""

    .line 302
    :cond_1
    :goto_1
    new-instance v8, Ljava/util/HashMap;

    const/4 v11, 0x5

    invoke-direct {v8, v11}, Ljava/util/HashMap;-><init>(I)V

    .line 303
    .local v8, "qualifiedNameMap":Ljava/util/Map;, "Ljava/util/Map<Ljavax/jmdns/ServiceInfo$Fields;Ljava/lang/String;>;"
    sget-object v11, Ljavax/jmdns/ServiceInfo$Fields;->Domain:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-static {v3}, Ljavax/jmdns/impl/ServiceInfoImpl;->removeSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v8, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    sget-object v11, Ljavax/jmdns/ServiceInfo$Fields;->Protocol:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v8, v11, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    sget-object v11, Ljavax/jmdns/ServiceInfo$Fields;->Application:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-static {v1}, Ljavax/jmdns/impl/ServiceInfoImpl;->removeSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v8, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    sget-object v11, Ljavax/jmdns/ServiceInfo$Fields;->Instance:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v8, v11, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    sget-object v11, Ljavax/jmdns/ServiceInfo$Fields;->Subtype:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-interface {v8, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    return-object v8

    .line 258
    .end local v5    # "index":I
    .end local v8    # "qualifiedNameMap":Ljava/util/Map;, "Ljava/util/Map<Ljavax/jmdns/ServiceInfo$Fields;Ljava/lang/String;>;"
    :cond_2
    const-string v11, "ip6.arpa"

    invoke-virtual {v0, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    goto :goto_0

    .line 262
    :cond_3
    const-string v11, "_"

    invoke-virtual {v0, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "."

    invoke-virtual {v0, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 263
    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 264
    .restart local v5    # "index":I
    invoke-virtual {v2, v12, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljavax/jmdns/impl/ServiceInfoImpl;->removeSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 265
    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljavax/jmdns/impl/ServiceInfoImpl;->removeSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 266
    const-string v1, ""

    goto :goto_1

    .line 269
    .end local v5    # "index":I
    :cond_4
    const-string v11, "_"

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    const-string v11, "_services"

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 270
    :cond_5
    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 271
    .restart local v5    # "index":I
    if-lez v5, :cond_6

    .line 273
    invoke-virtual {v2, v12, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 274
    add-int/lit8 v11, v5, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v11, v13, :cond_6

    .line 275
    add-int/lit8 v11, v5, 0x1

    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 276
    add-int/lit8 v11, v5, 0x1

    invoke-virtual {v2, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 281
    .end local v5    # "index":I
    :cond_6
    const-string v11, "._"

    invoke-virtual {v0, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 282
    .restart local v5    # "index":I
    if-lez v5, :cond_7

    .line 283
    add-int/lit8 v9, v5, 0x2

    .line 284
    .local v9, "start":I
    invoke-virtual {v0, v14, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 285
    .local v4, "end":I
    invoke-virtual {v2, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 287
    .end local v4    # "end":I
    .end local v9    # "start":I
    :cond_7
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_8

    .line 288
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "_"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "."

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 289
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v11, v5

    add-int/lit8 v9, v11, 0x2

    .line 290
    .restart local v9    # "start":I
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v13

    const-string v11, "."

    invoke-virtual {v0, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    const/4 v11, 0x1

    :goto_2
    sub-int v4, v13, v11

    .line 291
    .restart local v4    # "end":I
    invoke-virtual {v2, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 292
    add-int/lit8 v11, v5, -0x1

    invoke-virtual {v2, v12, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 294
    .end local v4    # "end":I
    .end local v9    # "start":I
    :cond_8
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    const-string v13, "._sub"

    invoke-virtual {v11, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 295
    if-lez v5, :cond_1

    .line 296
    add-int/lit8 v9, v5, 0x5

    .line 297
    .restart local v9    # "start":I
    invoke-virtual {v1, v12, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljavax/jmdns/impl/ServiceInfoImpl;->removeSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 298
    invoke-virtual {v1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_9
    move v11, v12

    .line 290
    goto :goto_2
.end method

.method private final hasInetAddress()Z
    .locals 1

    .prologue
    .line 948
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv4Addresses:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv6Addresses:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static removeSeparators(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 356
    if-nez p0, :cond_1

    .line 357
    const-string v0, ""

    .line 369
    :cond_0
    :goto_0
    return-object v0

    .line 359
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 360
    .local v0, "newName":Ljava/lang/String;
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 361
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 363
    :cond_2
    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 364
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 366
    :cond_3
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 367
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static textFromProperties(Ljava/util/Map;)[B
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)[B"
        }
    .end annotation

    .prologue
    .line 1232
    .local p0, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    const/4 v8, 0x0

    .line 1233
    .local v8, "text":[B
    if-eqz p0, :cond_7

    .line 1235
    :try_start_0
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    const/16 v10, 0x100

    invoke-direct {v6, v10}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1236
    .local v6, "out":Ljava/io/ByteArrayOutputStream;
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1237
    .local v5, "key":Ljava/lang/String;
    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 1238
    .local v9, "val":Ljava/lang/Object;
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    const/16 v10, 0x64

    invoke-direct {v7, v10}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1239
    .local v7, "out2":Ljava/io/ByteArrayOutputStream;
    invoke-static {v7, v5}, Ljavax/jmdns/impl/ServiceInfoImpl;->writeUTF(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1240
    if-nez v9, :cond_0

    .line 1256
    .end local v9    # "val":Ljava/lang/Object;
    :goto_1
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 1257
    .local v2, "data":[B
    array-length v10, v2

    const/16 v11, 0xff

    if-le v10, v11, :cond_5

    .line 1258
    new-instance v11, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Cannot have individual values larger that 255 chars. Offending value: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-eqz v9, :cond_4

    const-string v10, ""

    :goto_2
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v11, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1264
    .end local v2    # "data":[B
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "out2":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v3

    .line 1265
    .local v3, "e":Ljava/io/IOException;
    new-instance v10, Ljava/lang/RuntimeException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "unexpected exception: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1242
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "key":Ljava/lang/String;
    .restart local v6    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "out2":Ljava/io/ByteArrayOutputStream;
    .restart local v9    # "val":Ljava/lang/Object;
    :cond_0
    :try_start_1
    instance-of v10, v9, Ljava/lang/String;

    if-eqz v10, :cond_1

    .line 1243
    const/16 v10, 0x3d

    invoke-virtual {v7, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1244
    move-object v0, v9

    check-cast v0, Ljava/lang/String;

    move-object v10, v0

    invoke-static {v7, v10}, Ljavax/jmdns/impl/ServiceInfoImpl;->writeUTF(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_1

    .line 1245
    :cond_1
    instance-of v10, v9, [B

    if-eqz v10, :cond_3

    .line 1246
    move-object v0, v9

    check-cast v0, [B

    move-object v10, v0

    move-object v0, v10

    check-cast v0, [B

    move-object v1, v0

    .line 1247
    .local v1, "bval":[B
    array-length v10, v1

    if-lez v10, :cond_2

    .line 1248
    const/16 v10, 0x3d

    invoke-virtual {v7, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1249
    const/4 v10, 0x0

    array-length v11, v1

    invoke-virtual {v7, v1, v10, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 1251
    :cond_2
    const/4 v9, 0x0

    goto :goto_1

    .line 1254
    .end local v1    # "bval":[B
    :cond_3
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "invalid property value: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1258
    .end local v9    # "val":Ljava/lang/Object;
    .restart local v2    # "data":[B
    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "="

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    .line 1260
    :cond_5
    array-length v10, v2

    int-to-byte v10, v10

    invoke-virtual {v6, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1261
    const/4 v10, 0x0

    array-length v11, v2

    invoke-virtual {v6, v2, v10, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto/16 :goto_0

    .line 1263
    .end local v2    # "data":[B
    .end local v5    # "key":Ljava/lang/String;
    .end local v7    # "out2":Ljava/io/ByteArrayOutputStream;
    :cond_6
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v8

    .line 1268
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "out":Ljava/io/ByteArrayOutputStream;
    :cond_7
    if-eqz v8, :cond_8

    array-length v10, v8

    if-lez v10, :cond_8

    .end local v8    # "text":[B
    :goto_3
    return-object v8

    .restart local v8    # "text":[B
    :cond_8
    sget-object v8, Ljavax/jmdns/impl/DNSRecord;->EMPTY_TXT:[B

    goto :goto_3
.end method

.method static writeUTF(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 4
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 751
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "len":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 752
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 753
    .local v0, "c":I
    const/4 v3, 0x1

    if-lt v0, v3, :cond_0

    const/16 v3, 0x7f

    if-gt v0, v3, :cond_0

    .line 754
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    .line 751
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 756
    :cond_0
    const/16 v3, 0x7ff

    if-le v0, v3, :cond_1

    .line 757
    shr-int/lit8 v3, v0, 0xc

    and-int/lit8 v3, v3, 0xf

    or-int/lit16 v3, v3, 0xe0

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write(I)V

    .line 758
    shr-int/lit8 v3, v0, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write(I)V

    .line 759
    shr-int/lit8 v3, v0, 0x0

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write(I)V

    goto :goto_1

    .line 761
    :cond_1
    shr-int/lit8 v3, v0, 0x6

    and-int/lit8 v3, v3, 0x1f

    or-int/lit16 v3, v3, 0xc0

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write(I)V

    .line 762
    shr-int/lit8 v3, v0, 0x0

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write(I)V

    goto :goto_1

    .line 766
    .end local v0    # "c":I
    :cond_2
    return-void
.end method


# virtual methods
.method _setText([B)V
    .locals 1
    .param p1, "text"    # [B

    .prologue
    .line 1227
    iput-object p1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_text:[B

    .line 1228
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_props:Ljava/util/Map;

    .line 1229
    return-void
.end method

.method addAddress(Ljava/net/Inet4Address;)V
    .locals 1
    .param p1, "addr"    # Ljava/net/Inet4Address;

    .prologue
    .line 485
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv4Addresses:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 486
    return-void
.end method

.method addAddress(Ljava/net/Inet6Address;)V
    .locals 1
    .param p1, "addr"    # Ljava/net/Inet6Address;

    .prologue
    .line 493
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv6Addresses:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 494
    return-void
.end method

.method public advanceState(Ljavax/jmdns/impl/tasks/DNSTask;)Z
    .locals 1
    .param p1, "task"    # Ljavax/jmdns/impl/tasks/DNSTask;

    .prologue
    .line 958
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    invoke-virtual {v0, p1}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->advanceState(Ljavax/jmdns/impl/tasks/DNSTask;)Z

    move-result v0

    return v0
.end method

.method public answers(ZILjavax/jmdns/impl/HostInfo;)Ljava/util/Collection;
    .locals 10
    .param p1, "unique"    # Z
    .param p2, "ttl"    # I
    .param p3, "localHost"    # Ljavax/jmdns/impl/HostInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljavax/jmdns/impl/HostInfo;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljavax/jmdns/impl/DNSRecord;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1191
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1192
    .local v9, "list":Ljava/util/List;, "Ljava/util/List<Ljavax/jmdns/impl/DNSRecord;>;"
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getSubtype()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1193
    new-instance v0, Ljavax/jmdns/impl/DNSRecord$Pointer;

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getTypeWithSubtype()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v5

    move v4, p2

    invoke-direct/range {v0 .. v5}, Ljavax/jmdns/impl/DNSRecord$Pointer;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1195
    :cond_0
    new-instance v0, Ljavax/jmdns/impl/DNSRecord$Pointer;

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getType()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v5

    move v4, p2

    invoke-direct/range {v0 .. v5}, Ljavax/jmdns/impl/DNSRecord$Pointer;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1196
    new-instance v0, Ljavax/jmdns/impl/DNSRecord$Service;

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    iget v5, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_priority:I

    iget v6, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_weight:I

    iget v7, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_port:I

    invoke-virtual {p3}, Ljavax/jmdns/impl/HostInfo;->getName()Ljava/lang/String;

    move-result-object v8

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v8}, Ljavax/jmdns/impl/DNSRecord$Service;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZIIIILjava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1197
    new-instance v0, Ljavax/jmdns/impl/DNSRecord$Text;

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getTextBytes()[B

    move-result-object v5

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Ljavax/jmdns/impl/DNSRecord$Text;-><init>(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordClass;ZI[B)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1198
    return-object v9
.end method

.method public associateWithTask(Ljavax/jmdns/impl/tasks/DNSTask;Ljavax/jmdns/impl/constants/DNSState;)V
    .locals 1
    .param p1, "task"    # Ljavax/jmdns/impl/tasks/DNSTask;
    .param p2, "state"    # Ljavax/jmdns/impl/constants/DNSState;

    .prologue
    .line 1006
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    invoke-virtual {v0, p1, p2}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->associateWithTask(Ljavax/jmdns/impl/tasks/DNSTask;Ljavax/jmdns/impl/constants/DNSState;)V

    .line 1007
    return-void
.end method

.method public cancelState()Z
    .locals 1

    .prologue
    .line 974
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->cancelState()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->clone()Ljavax/jmdns/impl/ServiceInfoImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljavax/jmdns/ServiceInfo;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->clone()Ljavax/jmdns/impl/ServiceInfoImpl;

    move-result-object v0

    return-object v0
.end method

.method public clone()Ljavax/jmdns/impl/ServiceInfoImpl;
    .locals 13

    .prologue
    .line 1133
    new-instance v0, Ljavax/jmdns/impl/ServiceInfoImpl;

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedNameMap()Ljava/util/Map;

    move-result-object v1

    iget v2, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_port:I

    iget v3, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_weight:I

    iget v4, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_priority:I

    iget-boolean v5, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_persistent:Z

    iget-object v6, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_text:[B

    invoke-direct/range {v0 .. v6}, Ljavax/jmdns/impl/ServiceInfoImpl;-><init>(Ljava/util/Map;IIIZ[B)V

    .line 1134
    .local v0, "serviceInfo":Ljavax/jmdns/impl/ServiceInfoImpl;
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getInet6Addresses()[Ljava/net/Inet6Address;

    move-result-object v11

    .line 1135
    .local v11, "ipv6Addresses":[Ljava/net/Inet6Address;
    move-object v8, v11

    .local v8, "arr$":[Ljava/net/Inet6Address;
    array-length v12, v8

    .local v12, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_0
    if-ge v9, v12, :cond_0

    aget-object v7, v8, v9

    .line 1136
    .local v7, "address":Ljava/net/Inet6Address;
    iget-object v1, v0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv6Addresses:Ljava/util/Set;

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1135
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1138
    .end local v7    # "address":Ljava/net/Inet6Address;
    :cond_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getInet4Addresses()[Ljava/net/Inet4Address;

    move-result-object v10

    .line 1139
    .local v10, "ipv4Addresses":[Ljava/net/Inet4Address;
    move-object v8, v10

    .local v8, "arr$":[Ljava/net/Inet4Address;
    array-length v12, v8

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v12, :cond_1

    aget-object v7, v8, v9

    .line 1140
    .local v7, "address":Ljava/net/Inet4Address;
    iget-object v1, v0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv4Addresses:Ljava/util/Set;

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1139
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1142
    .end local v7    # "address":Ljava/net/Inet4Address;
    :cond_1
    return-object v0
.end method

.method public closeState()Z
    .locals 1

    .prologue
    .line 982
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->closeState()Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1102
    instance-of v0, p1, Ljavax/jmdns/impl/ServiceInfoImpl;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Ljavax/jmdns/impl/ServiceInfoImpl;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAddress()Ljava/net/InetAddress;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 502
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getApplication()Ljava/lang/String;
    .locals 1

    .prologue
    .line 705
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_application:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_application:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method getDelegate()Ljavax/jmdns/impl/ServiceInfoImpl$Delegate;
    .locals 1

    .prologue
    .line 1313
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_delegate:Ljavax/jmdns/impl/ServiceInfoImpl$Delegate;

    return-object v0
.end method

.method public getDns()Ljavax/jmdns/impl/JmDNSImpl;
    .locals 1

    .prologue
    .line 1280
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 713
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_domain:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_domain:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "local"

    goto :goto_0
.end method

.method public getHostAddress()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 459
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getHostAddresses()[Ljava/lang/String;

    move-result-object v0

    .line 460
    .local v0, "names":[Ljava/lang/String;
    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getHostAddresses()[Ljava/lang/String;
    .locals 7

    .prologue
    .line 468
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getInet4Addresses()[Ljava/net/Inet4Address;

    move-result-object v1

    .line 469
    .local v1, "ip4Aaddresses":[Ljava/net/Inet4Address;
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getInet6Addresses()[Ljava/net/Inet6Address;

    move-result-object v2

    .line 470
    .local v2, "ip6Aaddresses":[Ljava/net/Inet6Address;
    array-length v4, v1

    array-length v5, v2

    add-int/2addr v4, v5

    new-array v3, v4, [Ljava/lang/String;

    .line 471
    .local v3, "names":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_0

    .line 472
    aget-object v4, v1, v0

    invoke-virtual {v4}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 471
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 474
    :cond_0
    const/4 v0, 0x0

    :goto_1
    array-length v4, v2

    if-ge v0, v4, :cond_1

    .line 475
    array-length v4, v1

    add-int/2addr v4, v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v0

    invoke-virtual {v6}, Ljava/net/Inet6Address;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 474
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 477
    :cond_1
    return-object v3
.end method

.method public getInet4Address()Ljava/net/Inet4Address;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 521
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getInet4Addresses()[Ljava/net/Inet4Address;

    move-result-object v0

    .line 522
    .local v0, "addresses":[Ljava/net/Inet4Address;
    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getInet4Addresses()[Ljava/net/Inet4Address;
    .locals 2

    .prologue
    .line 553
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv4Addresses:Ljava/util/Set;

    iget-object v1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv4Addresses:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/net/Inet4Address;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/net/Inet4Address;

    return-object v0
.end method

.method public getInet6Address()Ljava/net/Inet6Address;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 531
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getInet6Addresses()[Ljava/net/Inet6Address;

    move-result-object v0

    .line 532
    .local v0, "addresses":[Ljava/net/Inet6Address;
    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getInet6Addresses()[Ljava/net/Inet6Address;
    .locals 2

    .prologue
    .line 562
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv6Addresses:Ljava/util/Set;

    iget-object v1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv6Addresses:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/net/Inet6Address;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/net/Inet6Address;

    return-object v0
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 511
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getInetAddresses()[Ljava/net/InetAddress;

    move-result-object v0

    .line 512
    .local v0, "addresses":[Ljava/net/InetAddress;
    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getInetAddresses()[Ljava/net/InetAddress;
    .locals 3

    .prologue
    .line 541
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv4Addresses:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    iget-object v2, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv6Addresses:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 542
    .local v0, "aList":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    iget-object v1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv4Addresses:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 543
    iget-object v1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv6Addresses:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 544
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/net/InetAddress;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/net/InetAddress;

    return-object v1
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_key:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 406
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_key:Ljava/lang/String;

    .line 408
    :cond_0
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_key:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_name:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_name:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getNiceTextString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1110
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1111
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getTextBytes()[B

    move-result-object v4

    array-length v3, v4

    .local v3, "len":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 1112
    const/16 v4, 0xc8

    if-lt v2, v4, :cond_1

    .line 1113
    const-string v4, "..."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1124
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1116
    :cond_1
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getTextBytes()[B

    move-result-object v4

    aget-byte v4, v4, v2

    and-int/lit16 v1, v4, 0xff

    .line 1117
    .local v1, "ch":I
    const/16 v4, 0x20

    if-lt v1, v4, :cond_2

    const/16 v4, 0x7f

    if-le v1, v4, :cond_3

    .line 1118
    :cond_2
    const-string v4, "\\0"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1119
    const/16 v4, 0x8

    invoke-static {v1, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1111
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1121
    :cond_3
    int-to-char v4, v1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 570
    iget v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_port:I

    return v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 578
    iget v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_priority:I

    return v0
.end method

.method declared-synchronized getProperties()Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .prologue
    .line 816
    monitor-enter p0

    :try_start_0
    iget-object v8, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_props:Ljava/util/Map;

    if-nez v8, :cond_1

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getTextBytes()[B

    move-result-object v8

    if-eqz v8, :cond_1

    .line 817
    new-instance v6, Ljava/util/Hashtable;

    invoke-direct {v6}, Ljava/util/Hashtable;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 819
    .local v6, "properties":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;[B>;"
    const/4 v4, 0x0

    .local v4, "off":I
    move v5, v4

    .line 820
    .end local v4    # "off":I
    .local v5, "off":I
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getTextBytes()[B

    move-result-object v8

    array-length v8, v8

    if-ge v5, v8, :cond_7

    .line 822
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getTextBytes()[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "off":I
    .restart local v4    # "off":I
    :try_start_2
    aget-byte v8, v8, v5

    and-int/lit16 v2, v8, 0xff

    .line 823
    .local v2, "len":I
    if-eqz v2, :cond_0

    add-int v8, v4, v2

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getTextBytes()[B

    move-result-object v9

    array-length v9, v9

    if-le v8, v9, :cond_2

    .line 824
    :cond_0
    invoke-virtual {v6}, Ljava/util/Hashtable;->clear()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 852
    .end local v2    # "len":I
    :goto_1
    :try_start_3
    iput-object v6, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_props:Ljava/util/Map;

    .line 854
    .end local v4    # "off":I
    .end local v6    # "properties":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;[B>;"
    :cond_1
    iget-object v8, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_props:Ljava/util/Map;

    if-eqz v8, :cond_6

    iget-object v8, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_props:Ljava/util/Map;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    monitor-exit p0

    return-object v8

    .line 828
    .restart local v2    # "len":I
    .restart local v4    # "off":I
    .restart local v6    # "properties":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;[B>;"
    :cond_2
    const/4 v1, 0x0

    .line 829
    .local v1, "i":I
    :goto_3
    if-ge v1, v2, :cond_3

    :try_start_4
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getTextBytes()[B

    move-result-object v8

    add-int v9, v4, v1

    aget-byte v8, v8, v9

    const/16 v9, 0x3d

    if-eq v8, v9, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 834
    :cond_3
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getTextBytes()[B

    move-result-object v8

    invoke-virtual {p0, v8, v4, v1}, Ljavax/jmdns/impl/ServiceInfoImpl;->readUTF([BII)Ljava/lang/String;

    move-result-object v3

    .line 835
    .local v3, "name":Ljava/lang/String;
    if-nez v3, :cond_4

    .line 836
    invoke-virtual {v6}, Ljava/util/Hashtable;->clear()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 848
    .end local v1    # "i":I
    .end local v2    # "len":I
    .end local v3    # "name":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 850
    .local v0, "exception":Ljava/lang/Exception;
    :goto_4
    :try_start_5
    sget-object v8, Ljavax/jmdns/impl/ServiceInfoImpl;->logger:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v10, "Malformed TXT Field "

    invoke-virtual {v8, v9, v10, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 816
    .end local v0    # "exception":Ljava/lang/Exception;
    .end local v4    # "off":I
    .end local v6    # "properties":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;[B>;"
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 839
    .restart local v1    # "i":I
    .restart local v2    # "len":I
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v4    # "off":I
    .restart local v6    # "properties":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;[B>;"
    :cond_4
    if-ne v1, v2, :cond_5

    .line 840
    :try_start_6
    sget-object v8, Ljavax/jmdns/impl/ServiceInfoImpl;->NO_VALUE:[B

    invoke-virtual {v6, v3, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    move v5, v4

    .line 847
    .end local v4    # "off":I
    .restart local v5    # "off":I
    goto :goto_0

    .line 842
    .end local v5    # "off":I
    .restart local v4    # "off":I
    :cond_5
    add-int/lit8 v1, v1, 0x1

    sub-int v8, v2, v1

    new-array v7, v8, [B

    .line 843
    .local v7, "value":[B
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getTextBytes()[B

    move-result-object v8

    add-int v9, v4, v1

    const/4 v10, 0x0

    sub-int v11, v2, v1

    invoke-static {v8, v9, v7, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 844
    invoke-virtual {v6, v3, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 845
    add-int/2addr v4, v2

    goto :goto_5

    .line 854
    .end local v1    # "i":I
    .end local v2    # "len":I
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "off":I
    .end local v6    # "properties":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;[B>;"
    .end local v7    # "value":[B
    :cond_6
    :try_start_7
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v8

    goto :goto_2

    .line 848
    .restart local v5    # "off":I
    .restart local v6    # "properties":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;[B>;"
    :catch_1
    move-exception v0

    move v4, v5

    .end local v5    # "off":I
    .restart local v4    # "off":I
    goto :goto_4

    .end local v4    # "off":I
    .restart local v5    # "off":I
    :cond_7
    move v4, v5

    .end local v5    # "off":I
    .restart local v4    # "off":I
    goto :goto_1
.end method

.method public declared-synchronized getPropertyBytes(Ljava/lang/String;)[B
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 672
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getProperties()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPropertyNames()Ljava/util/Enumeration;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 695
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getProperties()Ljava/util/Map;

    move-result-object v1

    .line 696
    .local v1, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 697
    .local v0, "names":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :goto_0
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2, v0}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    return-object v2

    .line 696
    .end local v0    # "names":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method public declared-synchronized getPropertyString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 680
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getProperties()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 681
    .local v0, "data":[B
    if-nez v0, :cond_0

    .line 682
    const/4 v1, 0x0

    .line 687
    :goto_0
    monitor-exit p0

    return-object v1

    .line 684
    :cond_0
    :try_start_1
    sget-object v1, Ljavax/jmdns/impl/ServiceInfoImpl;->NO_VALUE:[B

    if-ne v0, v1, :cond_1

    .line 685
    const-string v1, "true"

    goto :goto_0

    .line 687
    :cond_1
    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Ljavax/jmdns/impl/ServiceInfoImpl;->readUTF([BII)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 680
    .end local v0    # "data":[B
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 721
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_protocol:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_protocol:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "tcp"

    goto :goto_0
.end method

.method public getQualifiedName()Ljava/lang/String;
    .locals 7

    .prologue
    .line 427
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getDomain()Ljava/lang/String;

    move-result-object v1

    .line 428
    .local v1, "domain":Ljava/lang/String;
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getProtocol()Ljava/lang/String;

    move-result-object v3

    .line 429
    .local v3, "protocol":Ljava/lang/String;
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getApplication()Ljava/lang/String;

    move-result-object v0

    .line 430
    .local v0, "application":Ljava/lang/String;
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getName()Ljava/lang/String;

    move-result-object v2

    .line 434
    .local v2, "instance":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_0
    const-string v4, ""

    goto :goto_0

    :cond_1
    const-string v4, ""

    goto :goto_1

    :cond_2
    const-string v4, ""

    goto :goto_2
.end method

.method public getQualifiedNameMap()Ljava/util/Map;
    .locals 3
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

    .prologue
    .line 737
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 739
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljavax/jmdns/ServiceInfo$Fields;Ljava/lang/String;>;"
    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Domain:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getDomain()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 740
    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Protocol:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Application:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getApplication()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Instance:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 743
    sget-object v1, Ljavax/jmdns/ServiceInfo$Fields;->Subtype:Ljavax/jmdns/ServiceInfo$Fields;

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getSubtype()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    return-object v0
.end method

.method public getServer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_server:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_server:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getSubtype()Ljava/lang/String;
    .locals 1

    .prologue
    .line 729
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_subtype:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_subtype:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getTextBytes()[B
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_text:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_text:[B

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_text:[B

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljavax/jmdns/impl/DNSRecord;->EMPTY_TXT:[B

    goto :goto_0
.end method

.method public getTextString()Ljava/lang/String;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 603
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getProperties()Ljava/util/Map;

    move-result-object v2

    .line 604
    .local v2, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 605
    .local v1, "key":Ljava/lang/String;
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 606
    .local v3, "value":[B
    if-eqz v3, :cond_0

    array-length v4, v3

    if-lez v4, :cond_0

    .line 607
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 611
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "value":[B
    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const-string v1, ""

    goto :goto_0
.end method

.method public getType()Ljava/lang/String;
    .locals 6

    .prologue
    .line 377
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getDomain()Ljava/lang/String;

    move-result-object v1

    .line 378
    .local v1, "domain":Ljava/lang/String;
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getProtocol()Ljava/lang/String;

    move-result-object v2

    .line 379
    .local v2, "protocol":Ljava/lang/String;
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getApplication()Ljava/lang/String;

    move-result-object v0

    .line 380
    .local v0, "application":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_0
    const-string v3, ""

    goto :goto_0

    :cond_1
    const-string v3, ""

    goto :goto_1
.end method

.method public getTypeWithSubtype()Ljava/lang/String;
    .locals 4

    .prologue
    .line 388
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getSubtype()Ljava/lang/String;

    move-result-object v0

    .line 389
    .local v0, "subtype":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "._sub."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 621
    const-string v0, "http"

    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "protocol"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 640
    invoke-virtual {p0, p1}, Ljavax/jmdns/impl/ServiceInfoImpl;->getURLs(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 641
    .local v0, "urls":[Ljava/lang/String;
    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "://null:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getURLs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 630
    const-string v0, "http"

    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getURLs(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getURLs(Ljava/lang/String;)[Ljava/lang/String;
    .locals 8
    .param p1, "protocol"    # Ljava/lang/String;

    .prologue
    .line 650
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getInetAddresses()[Ljava/net/InetAddress;

    move-result-object v0

    .line 651
    .local v0, "addresses":[Ljava/net/InetAddress;
    array-length v5, v0

    new-array v4, v5, [Ljava/lang/String;

    .line 652
    .local v4, "urls":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v0

    if-ge v1, v5, :cond_3

    .line 653
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v0, v1

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getPort()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 654
    .local v3, "url":Ljava/lang/String;
    const-string v5, "path"

    invoke-virtual {p0, v5}, Ljavax/jmdns/impl/ServiceInfoImpl;->getPropertyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 655
    .local v2, "path":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 656
    const-string v5, "://"

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_1

    .line 657
    move-object v3, v2

    .line 662
    .end local v2    # "path":Ljava/lang/String;
    :cond_0
    :goto_1
    aput-object v3, v4, v1

    .line 652
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 659
    .restart local v2    # "path":Ljava/lang/String;
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .end local v2    # "path":Ljava/lang/String;
    :goto_2
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .restart local v2    # "path":Ljava/lang/String;
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 664
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "url":Ljava/lang/String;
    :cond_3
    return-object v4
.end method

.method public getWeight()I
    .locals 1

    .prologue
    .line 586
    iget v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_weight:I

    return v0
.end method

.method public declared-synchronized hasData()Z
    .locals 1

    .prologue
    .line 943
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getServer()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->hasInetAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getTextBytes()[B

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getTextBytes()[B

    move-result-object v0

    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1094
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAnnounced()Z
    .locals 1

    .prologue
    .line 1038
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->isAnnounced()Z

    move-result v0

    return v0
.end method

.method public isAnnouncing()Z
    .locals 1

    .prologue
    .line 1030
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->isAnnouncing()Z

    move-result v0

    return v0
.end method

.method public isAssociatedWithTask(Ljavax/jmdns/impl/tasks/DNSTask;Ljavax/jmdns/impl/constants/DNSState;)Z
    .locals 1
    .param p1, "task"    # Ljavax/jmdns/impl/tasks/DNSTask;
    .param p2, "state"    # Ljavax/jmdns/impl/constants/DNSState;

    .prologue
    .line 1014
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    invoke-virtual {v0, p1, p2}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->isAssociatedWithTask(Ljavax/jmdns/impl/tasks/DNSTask;Ljavax/jmdns/impl/constants/DNSState;)Z

    move-result v0

    return v0
.end method

.method public isCanceled()Z
    .locals 1

    .prologue
    .line 1054
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->isCanceled()Z

    move-result v0

    return v0
.end method

.method public isCanceling()Z
    .locals 1

    .prologue
    .line 1046
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->isCanceling()Z

    move-result v0

    return v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 1070
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->isClosed()Z

    move-result v0

    return v0
.end method

.method public isClosing()Z
    .locals 1

    .prologue
    .line 1062
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->isClosing()Z

    move-result v0

    return v0
.end method

.method public isPersistent()Z
    .locals 1

    .prologue
    .line 1288
    iget-boolean v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_persistent:Z

    return v0
.end method

.method public isProbing()Z
    .locals 1

    .prologue
    .line 1022
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->isProbing()Z

    move-result v0

    return v0
.end method

.method public needTextAnnouncing()Z
    .locals 1

    .prologue
    .line 1306
    iget-boolean v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_needTextAnnouncing:Z

    return v0
.end method

.method readUTF([BII)Ljava/lang/String;
    .locals 8
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    const/4 v5, 0x0

    .line 772
    move v3, p2

    .line 773
    .local v3, "offset":I
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 774
    .local v0, "buf":Ljava/lang/StringBuffer;
    add-int v2, v3, p3

    .local v2, "end":I
    move v4, v3

    .end local v3    # "offset":I
    .local v4, "offset":I
    :goto_0
    if-ge v4, v2, :cond_2

    .line 775
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    aget-byte v6, p1, v4

    and-int/lit16 v1, v6, 0xff

    .line 776
    .local v1, "ch":I
    shr-int/lit8 v6, v1, 0x4

    packed-switch v6, :pswitch_data_0

    .line 803
    :pswitch_0
    add-int/lit8 v6, v3, 0x1

    if-lt v6, p3, :cond_1

    .line 812
    .end local v1    # "ch":I
    :cond_0
    :goto_1
    return-object v5

    .line 789
    .restart local v1    # "ch":I
    :pswitch_1
    if-ge v3, p3, :cond_0

    .line 793
    and-int/lit8 v6, v1, 0x1f

    shl-int/lit8 v6, v6, 0x6

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    aget-byte v7, p1, v3

    and-int/lit8 v7, v7, 0x3f

    or-int v1, v6, v7

    move v3, v4

    .line 810
    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    :goto_2
    :pswitch_2
    int-to-char v6, v1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v4, v3

    .line 811
    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    goto :goto_0

    .line 796
    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    :pswitch_3
    add-int/lit8 v6, v3, 0x2

    if-ge v6, p3, :cond_0

    .line 800
    and-int/lit8 v6, v1, 0xf

    shl-int/lit8 v6, v6, 0xc

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    aget-byte v7, p1, v3

    and-int/lit8 v7, v7, 0x3f

    shl-int/lit8 v7, v7, 0x6

    or-int/2addr v6, v7

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    aget-byte v7, p1, v4

    and-int/lit8 v7, v7, 0x3f

    or-int v1, v6, v7

    .line 801
    goto :goto_2

    .line 807
    :cond_1
    and-int/lit8 v6, v1, 0x3f

    shl-int/lit8 v6, v6, 0x4

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    aget-byte v7, p1, v3

    and-int/lit8 v7, v7, 0xf

    or-int v1, v6, v7

    move v3, v4

    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    goto :goto_2

    .line 812
    .end local v1    # "ch":I
    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    move v3, v4

    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    goto :goto_1

    .line 776
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public recoverState()Z
    .locals 1

    .prologue
    .line 990
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->recoverState()Z

    move-result v0

    return v0
.end method

.method public removeAssociationWithTask(Ljavax/jmdns/impl/tasks/DNSTask;)V
    .locals 1
    .param p1, "task"    # Ljavax/jmdns/impl/tasks/DNSTask;

    .prologue
    .line 998
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    invoke-virtual {v0, p1}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->removeAssociationWithTask(Ljavax/jmdns/impl/tasks/DNSTask;)V

    .line 999
    return-void
.end method

.method public revertState()Z
    .locals 1

    .prologue
    .line 966
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    invoke-virtual {v0}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->revertState()Z

    move-result v0

    return v0
.end method

.method setDelegate(Ljavax/jmdns/impl/ServiceInfoImpl$Delegate;)V
    .locals 0
    .param p1, "delegate"    # Ljavax/jmdns/impl/ServiceInfoImpl$Delegate;

    .prologue
    .line 1321
    iput-object p1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_delegate:Ljavax/jmdns/impl/ServiceInfoImpl$Delegate;

    .line 1322
    return-void
.end method

.method public setDns(Ljavax/jmdns/impl/JmDNSImpl;)V
    .locals 1
    .param p1, "dns"    # Ljavax/jmdns/impl/JmDNSImpl;

    .prologue
    .line 1272
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    invoke-virtual {v0, p1}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->setDns(Ljavax/jmdns/impl/JmDNSImpl;)V

    .line 1273
    return-void
.end method

.method setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 418
    iput-object p1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_name:Ljava/lang/String;

    .line 419
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_key:Ljava/lang/String;

    .line 420
    return-void
.end method

.method public setNeedTextAnnouncing(Z)V
    .locals 2
    .param p1, "needTextAnnouncing"    # Z

    .prologue
    .line 1296
    iput-boolean p1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_needTextAnnouncing:Z

    .line 1297
    iget-boolean v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_needTextAnnouncing:Z

    if-eqz v0, :cond_0

    .line 1298
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->setTask(Ljavax/jmdns/impl/tasks/DNSTask;)V

    .line 1300
    :cond_0
    return-void
.end method

.method setServer(Ljava/lang/String;)V
    .locals 0
    .param p1, "server"    # Ljava/lang/String;

    .prologue
    .line 450
    iput-object p1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_server:Ljava/lang/String;

    .line 451
    return-void
.end method

.method public setText(Ljava/util/Map;)V
    .locals 1
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

    .prologue
    .line 1218
    .local p1, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-static {p1}, Ljavax/jmdns/impl/ServiceInfoImpl;->textFromProperties(Ljava/util/Map;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->setText([B)V

    .line 1219
    return-void
.end method

.method public setText([B)V
    .locals 1
    .param p1, "text"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1206
    monitor-enter p0

    .line 1207
    :try_start_0
    iput-object p1, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_text:[B

    .line 1208
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_props:Ljava/util/Map;

    .line 1209
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/ServiceInfoImpl;->setNeedTextAnnouncing(Z)V

    .line 1210
    monitor-exit p0

    .line 1211
    return-void

    .line 1210
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    .prologue
    .line 1150
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1151
    .local v3, "buf":Ljava/lang/StringBuilder;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "@"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1152
    const-string v8, "name: \'"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1153
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "."

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_0
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getTypeWithSubtype()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1154
    const-string v8, "\' address: \'"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1155
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getInetAddresses()[Ljava/net/InetAddress;

    move-result-object v1

    .line 1156
    .local v1, "addresses":[Ljava/net/InetAddress;
    array-length v8, v1

    if-lez v8, :cond_1

    .line 1157
    move-object v2, v1

    .local v2, "arr$":[Ljava/net/InetAddress;
    array-length v6, v2

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v6, :cond_2

    aget-object v0, v2, v4

    .line 1158
    .local v0, "address":Ljava/net/InetAddress;
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1159
    const/16 v8, 0x3a

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1160
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getPort()I

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1161
    const/16 v8, 0x20

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1157
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1153
    .end local v0    # "address":Ljava/net/InetAddress;
    .end local v1    # "addresses":[Ljava/net/InetAddress;
    .end local v2    # "arr$":[Ljava/net/InetAddress;
    .end local v4    # "i$":I
    .end local v6    # "len$":I
    :cond_0
    const-string v8, ""

    goto :goto_0

    .line 1164
    .restart local v1    # "addresses":[Ljava/net/InetAddress;
    :cond_1
    const-string v8, "(null):"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1165
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getPort()I

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1167
    :cond_2
    const-string v8, "\' status: \'"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1168
    iget-object v8, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    invoke-virtual {v8}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1169
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->isPersistent()Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "\' is persistent,"

    :goto_2
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1170
    const-string v8, " has "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1171
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->hasData()Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, ""

    :goto_3
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1172
    const-string v8, "data"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1173
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getTextBytes()[B

    move-result-object v8

    array-length v8, v8

    if-lez v8, :cond_6

    .line 1176
    invoke-virtual {p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getProperties()Ljava/util/Map;

    move-result-object v7

    .line 1177
    .local v7, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    .line 1178
    const-string v8, "\n"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1179
    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1180
    .local v5, "key":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\t"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    new-instance v10, Ljava/lang/String;

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-direct {v10, v8}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1169
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "key":Ljava/lang/String;
    .end local v7    # "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    :cond_3
    const-string v8, "\',"

    goto :goto_2

    .line 1171
    :cond_4
    const-string v8, "NO "

    goto :goto_3

    .line 1183
    .restart local v7    # "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    :cond_5
    const-string v8, " empty"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1186
    .end local v7    # "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    :cond_6
    const/16 v8, 0x5d

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1187
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method public updateRecord(Ljavax/jmdns/impl/DNSCache;JLjavax/jmdns/impl/DNSEntry;)V
    .locals 18
    .param p1, "dnsCache"    # Ljavax/jmdns/impl/DNSCache;
    .param p2, "now"    # J
    .param p4, "rec"    # Ljavax/jmdns/impl/DNSEntry;

    .prologue
    .line 866
    move-object/from16 v0, p4

    instance-of v13, v0, Ljavax/jmdns/impl/DNSRecord;

    if-eqz v13, :cond_2

    move-object/from16 v0, p4

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljavax/jmdns/impl/DNSEntry;->isExpired(J)Z

    move-result v13

    if-nez v13, :cond_2

    .line 867
    const/4 v10, 0x0

    .line 868
    .local v10, "serviceUpdated":Z
    sget-object v13, Ljavax/jmdns/impl/ServiceInfoImpl$1;->$SwitchMap$javax$jmdns$impl$constants$DNSRecordType:[I

    invoke-virtual/range {p4 .. p4}, Ljavax/jmdns/impl/DNSEntry;->getRecordType()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v14

    invoke-virtual {v14}, Ljavax/jmdns/impl/constants/DNSRecordType;->ordinal()I

    move-result v14

    aget v13, v13, v14

    packed-switch v13, :pswitch_data_0

    .line 921
    :cond_0
    :goto_0
    if-eqz v10, :cond_1

    invoke-virtual/range {p0 .. p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->hasData()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 922
    invoke-virtual/range {p0 .. p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v4

    .line 923
    .local v4, "dns":Ljavax/jmdns/impl/JmDNSImpl;
    if-eqz v4, :cond_1

    .line 924
    check-cast p4, Ljavax/jmdns/impl/DNSRecord;

    .end local p4    # "rec":Ljavax/jmdns/impl/DNSEntry;
    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljavax/jmdns/impl/DNSRecord;->getServiceEvent(Ljavax/jmdns/impl/JmDNSImpl;)Ljavax/jmdns/ServiceEvent;

    move-result-object v6

    .line 925
    .local v6, "event":Ljavax/jmdns/ServiceEvent;
    new-instance v7, Ljavax/jmdns/impl/ServiceEventImpl;

    invoke-virtual {v6}, Ljavax/jmdns/ServiceEvent;->getType()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6}, Ljavax/jmdns/ServiceEvent;->getName()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v7, v4, v13, v14, v0}, Ljavax/jmdns/impl/ServiceEventImpl;-><init>(Ljavax/jmdns/impl/JmDNSImpl;Ljava/lang/String;Ljava/lang/String;Ljavax/jmdns/ServiceInfo;)V

    .line 926
    .end local v6    # "event":Ljavax/jmdns/ServiceEvent;
    .local v7, "event":Ljavax/jmdns/ServiceEvent;
    invoke-virtual {v4, v7}, Ljavax/jmdns/impl/JmDNSImpl;->handleServiceResolved(Ljavax/jmdns/ServiceEvent;)V

    .line 930
    .end local v4    # "dns":Ljavax/jmdns/impl/JmDNSImpl;
    .end local v7    # "event":Ljavax/jmdns/ServiceEvent;
    :cond_1
    monitor-enter p0

    .line 931
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notifyAll()V

    .line 932
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 934
    .end local v10    # "serviceUpdated":Z
    :cond_2
    return-void

    .line 870
    .restart local v10    # "serviceUpdated":Z
    .restart local p4    # "rec":Ljavax/jmdns/impl/DNSEntry;
    :pswitch_0
    invoke-virtual/range {p4 .. p4}, Ljavax/jmdns/impl/DNSEntry;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getServer()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 871
    move-object/from16 v0, p0

    iget-object v14, v0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv4Addresses:Ljava/util/Set;

    move-object/from16 v13, p4

    check-cast v13, Ljavax/jmdns/impl/DNSRecord$Address;

    invoke-virtual {v13}, Ljavax/jmdns/impl/DNSRecord$Address;->getAddress()Ljava/net/InetAddress;

    move-result-object v13

    check-cast v13, Ljava/net/Inet4Address;

    invoke-interface {v14, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 872
    const/4 v10, 0x1

    goto :goto_0

    .line 876
    :pswitch_1
    invoke-virtual/range {p4 .. p4}, Ljavax/jmdns/impl/DNSEntry;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getServer()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 877
    move-object/from16 v0, p0

    iget-object v14, v0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv6Addresses:Ljava/util/Set;

    move-object/from16 v13, p4

    check-cast v13, Ljavax/jmdns/impl/DNSRecord$Address;

    invoke-virtual {v13}, Ljavax/jmdns/impl/DNSRecord$Address;->getAddress()Ljava/net/InetAddress;

    move-result-object v13

    check-cast v13, Ljava/net/Inet6Address;

    invoke-interface {v14, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 878
    const/4 v10, 0x1

    goto :goto_0

    .line 882
    :pswitch_2
    invoke-virtual/range {p4 .. p4}, Ljavax/jmdns/impl/DNSEntry;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    move-object/from16 v11, p4

    .line 883
    check-cast v11, Ljavax/jmdns/impl/DNSRecord$Service;

    .line 884
    .local v11, "srv":Ljavax/jmdns/impl/DNSRecord$Service;
    move-object/from16 v0, p0

    iget-object v13, v0, Ljavax/jmdns/impl/ServiceInfoImpl;->_server:Ljava/lang/String;

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Ljavax/jmdns/impl/ServiceInfoImpl;->_server:Ljava/lang/String;

    invoke-virtual {v11}, Ljavax/jmdns/impl/DNSRecord$Service;->getServer()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_4

    :cond_3
    const/4 v9, 0x1

    .line 885
    .local v9, "serverChanged":Z
    :goto_1
    invoke-virtual {v11}, Ljavax/jmdns/impl/DNSRecord$Service;->getServer()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Ljavax/jmdns/impl/ServiceInfoImpl;->_server:Ljava/lang/String;

    .line 886
    invoke-virtual {v11}, Ljavax/jmdns/impl/DNSRecord$Service;->getPort()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Ljavax/jmdns/impl/ServiceInfoImpl;->_port:I

    .line 887
    invoke-virtual {v11}, Ljavax/jmdns/impl/DNSRecord$Service;->getWeight()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Ljavax/jmdns/impl/ServiceInfoImpl;->_weight:I

    .line 888
    invoke-virtual {v11}, Ljavax/jmdns/impl/DNSRecord$Service;->getPriority()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Ljavax/jmdns/impl/ServiceInfoImpl;->_priority:I

    .line 889
    if-eqz v9, :cond_6

    .line 890
    move-object/from16 v0, p0

    iget-object v13, v0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv4Addresses:Ljava/util/Set;

    invoke-interface {v13}, Ljava/util/Set;->clear()V

    .line 891
    move-object/from16 v0, p0

    iget-object v13, v0, Ljavax/jmdns/impl/ServiceInfoImpl;->_ipv6Addresses:Ljava/util/Set;

    invoke-interface {v13}, Ljava/util/Set;->clear()V

    .line 892
    move-object/from16 v0, p0

    iget-object v13, v0, Ljavax/jmdns/impl/ServiceInfoImpl;->_server:Ljava/lang/String;

    sget-object v14, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_A:Ljavax/jmdns/impl/constants/DNSRecordType;

    sget-object v15, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14, v15}, Ljavax/jmdns/impl/DNSCache;->getDNSEntryList(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;)Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/jmdns/impl/DNSEntry;

    .line 893
    .local v5, "entry":Ljavax/jmdns/impl/DNSEntry;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3, v5}, Ljavax/jmdns/impl/ServiceInfoImpl;->updateRecord(Ljavax/jmdns/impl/DNSCache;JLjavax/jmdns/impl/DNSEntry;)V

    goto :goto_2

    .line 884
    .end local v5    # "entry":Ljavax/jmdns/impl/DNSEntry;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "serverChanged":Z
    :cond_4
    const/4 v9, 0x0

    goto :goto_1

    .line 895
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v9    # "serverChanged":Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Ljavax/jmdns/impl/ServiceInfoImpl;->_server:Ljava/lang/String;

    sget-object v14, Ljavax/jmdns/impl/constants/DNSRecordType;->TYPE_AAAA:Ljavax/jmdns/impl/constants/DNSRecordType;

    sget-object v15, Ljavax/jmdns/impl/constants/DNSRecordClass;->CLASS_IN:Ljavax/jmdns/impl/constants/DNSRecordClass;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14, v15}, Ljavax/jmdns/impl/DNSCache;->getDNSEntryList(Ljava/lang/String;Ljavax/jmdns/impl/constants/DNSRecordType;Ljavax/jmdns/impl/constants/DNSRecordClass;)Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/jmdns/impl/DNSEntry;

    .line 896
    .restart local v5    # "entry":Ljavax/jmdns/impl/DNSEntry;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3, v5}, Ljavax/jmdns/impl/ServiceInfoImpl;->updateRecord(Ljavax/jmdns/impl/DNSCache;JLjavax/jmdns/impl/DNSEntry;)V

    goto :goto_3

    .line 900
    .end local v5    # "entry":Ljavax/jmdns/impl/DNSEntry;
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_6
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 905
    .end local v9    # "serverChanged":Z
    .end local v11    # "srv":Ljavax/jmdns/impl/DNSRecord$Service;
    :pswitch_3
    invoke-virtual/range {p4 .. p4}, Ljavax/jmdns/impl/DNSEntry;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    move-object/from16 v12, p4

    .line 906
    check-cast v12, Ljavax/jmdns/impl/DNSRecord$Text;

    .line 907
    .local v12, "txt":Ljavax/jmdns/impl/DNSRecord$Text;
    invoke-virtual {v12}, Ljavax/jmdns/impl/DNSRecord$Text;->getText()[B

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Ljavax/jmdns/impl/ServiceInfoImpl;->_text:[B

    .line 908
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Ljavax/jmdns/impl/ServiceInfoImpl;->_props:Ljava/util/Map;

    .line 909
    const/4 v10, 0x1

    .line 910
    goto/16 :goto_0

    .line 913
    .end local v12    # "txt":Ljavax/jmdns/impl/DNSRecord$Text;
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->getSubtype()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_0

    invoke-virtual/range {p4 .. p4}, Ljavax/jmdns/impl/DNSEntry;->getSubtype()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_0

    .line 914
    invoke-virtual/range {p4 .. p4}, Ljavax/jmdns/impl/DNSEntry;->getSubtype()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Ljavax/jmdns/impl/ServiceInfoImpl;->_subtype:Ljava/lang/String;

    .line 915
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 932
    .end local p4    # "rec":Ljavax/jmdns/impl/DNSEntry;
    :catchall_0
    move-exception v13

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v13

    .line 868
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public waitForAnnounced(J)Z
    .locals 1
    .param p1, "timeout"    # J

    .prologue
    .line 1078
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    invoke-virtual {v0, p1, p2}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->waitForAnnounced(J)Z

    move-result v0

    return v0
.end method

.method public waitForCanceled(J)Z
    .locals 1
    .param p1, "timeout"    # J

    .prologue
    .line 1086
    iget-object v0, p0, Ljavax/jmdns/impl/ServiceInfoImpl;->_state:Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;

    invoke-virtual {v0, p1, p2}, Ljavax/jmdns/impl/ServiceInfoImpl$ServiceInfoState;->waitForCanceled(J)Z

    move-result v0

    return v0
.end method
