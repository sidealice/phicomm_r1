.class public final Lcom/huawei/hms/support/api/hwid/HuaweiIdSignInOptions$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/support/api/hwid/HuaweiIdSignInOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/huawei/hms/support/api/entity/auth/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/huawei/hms/support/api/entity/auth/PermissionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/huawei/hms/support/api/hwid/HuaweiIdSignInOptions$Builder;->a:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/huawei/hms/support/api/hwid/HuaweiIdSignInOptions$Builder;->b:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/huawei/hms/support/api/hwid/HuaweiIdSignInOptions;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/huawei/hms/support/api/hwid/HuaweiIdSignInOptions$Builder;->a:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/huawei/hms/support/api/hwid/HuaweiIdSignInOptions$Builder;->b:Ljava/util/Set;

    iget-object v0, p0, Lcom/huawei/hms/support/api/hwid/HuaweiIdSignInOptions$Builder;->a:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/huawei/hms/support/api/hwid/HuaweiIdSignInOptions;->getScopeList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/huawei/hms/support/api/hwid/HuaweiIdSignInOptions$Builder;->b:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/huawei/hms/support/api/hwid/HuaweiIdSignInOptions;->getPermissionInfos()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public build()Lcom/huawei/hms/support/api/hwid/HuaweiIdSignInOptions;
    .locals 3

    new-instance v0, Lcom/huawei/hms/support/api/hwid/HuaweiIdSignInOptions;

    iget-object v1, p0, Lcom/huawei/hms/support/api/hwid/HuaweiIdSignInOptions$Builder;->a:Ljava/util/Set;

    iget-object v2, p0, Lcom/huawei/hms/support/api/hwid/HuaweiIdSignInOptions$Builder;->b:Ljava/util/Set;

    invoke-direct {v0, v1, v2}, Lcom/huawei/hms/support/api/hwid/HuaweiIdSignInOptions;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    return-object v0
.end method

.method public requestOpenId()Lcom/huawei/hms/support/api/hwid/HuaweiIdSignInOptions$Builder;
    .locals 2

    iget-object v0, p0, Lcom/huawei/hms/support/api/hwid/HuaweiIdSignInOptions$Builder;->b:Ljava/util/Set;

    invoke-static {}, Lcom/huawei/hms/support/api/hwid/HuaweiIdSignInOptions;->b()Lcom/huawei/hms/support/api/entity/auth/PermissionInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public varargs requestScopes(Lcom/huawei/hms/support/api/entity/auth/Scope;[Lcom/huawei/hms/support/api/entity/auth/Scope;)Lcom/huawei/hms/support/api/hwid/HuaweiIdSignInOptions$Builder;
    .locals 1

    iget-object v0, p0, Lcom/huawei/hms/support/api/hwid/HuaweiIdSignInOptions$Builder;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    array-length p1, p2

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/huawei/hms/support/api/hwid/HuaweiIdSignInOptions$Builder;->a:Ljava/util/Set;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object p0
.end method

.method public requestUid()Lcom/huawei/hms/support/api/hwid/HuaweiIdSignInOptions$Builder;
    .locals 2

    iget-object v0, p0, Lcom/huawei/hms/support/api/hwid/HuaweiIdSignInOptions$Builder;->b:Ljava/util/Set;

    invoke-static {}, Lcom/huawei/hms/support/api/hwid/HuaweiIdSignInOptions;->a()Lcom/huawei/hms/support/api/entity/auth/PermissionInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
