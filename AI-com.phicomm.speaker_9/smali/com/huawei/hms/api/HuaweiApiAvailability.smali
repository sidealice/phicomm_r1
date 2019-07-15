.class public abstract Lcom/huawei/hms/api/HuaweiApiAvailability;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hms/api/HuaweiApiAvailability$OnUpdateListener;
    }
.end annotation


# static fields
.field public static final SERVICES_PACKAGE:Ljava/lang/String; = "com.huawei.hwid"

.field public static final SERVICES_SIGNATURE:Ljava/lang/String; = "B92825C2BD5D6D6D1E7F39EECD17843B7D9016F611136B75441BC6F4D3F00F05"

.field public static final SERVICES_VERSION_CODE:I = 0x13748ac


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/huawei/hms/api/HuaweiApiAvailability;
    .locals 1

    invoke-static {}, Lcom/huawei/hms/api/internal/a;->a()Lcom/huawei/hms/api/internal/a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract isHuaweiMobileServicesAvailable(Landroid/content/Context;)I
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract isUserResolvableError(I)Z
.end method

.method public abstract resolveError(Landroid/app/Activity;IILcom/huawei/hms/api/HuaweiApiAvailability$OnUpdateListener;)V
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/huawei/hms/api/HuaweiApiAvailability$OnUpdateListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
