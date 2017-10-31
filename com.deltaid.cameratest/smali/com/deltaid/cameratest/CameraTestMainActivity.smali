.class public Lcom/deltaid/cameratest/CameraTestMainActivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# static fields
.field static O:Landroid/media/ToneGenerator;

.field static final P:Ljava/lang/String;

.field private static T:I


# instance fields
.field A:Landroid/graphics/Paint;

.field B:Landroid/graphics/Paint;

.field C:[I

.field D:[I

.field E:[I

.field F:[I

.field G:[I

.field H:[I

.field I:Z

.field J:Z

.field K:Z

.field L:Landroid/os/Vibrator;

.field M:Z

.field N:Ljava/io/PrintStream;

.field private Q:Z

.field private R:Landroid/graphics/Paint;

.field private S:Landroid/graphics/Paint;

.field a:Lcom/deltaid/cameratest/CameraView;

.field b:Lcom/deltaid/cameratest/TouchSurfaceView;

.field c:Landroid/widget/SeekBar;

.field d:Landroid/widget/SeekBar;

.field e:Landroid/widget/EditText;

.field f:Landroid/widget/EditText;

.field g:Landroid/text/TextWatcher;

.field h:Landroid/text/TextWatcher;

.field i:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field j:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field k:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field l:Landroid/widget/LinearLayout;

.field m:Landroid/widget/Button;

.field n:Landroid/widget/Button;

.field o:Landroid/widget/Button;

.field p:Landroid/widget/Button;

.field q:Landroid/widget/Button;

.field r:Lcom/deltaid/iris_demo/IrisMobileDevice;

.field s:I

.field t:I

.field u:I

.field v:I

.field w:I

.field public x:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field y:[I

.field z:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const v0, 0x33b5e5

    sput v0, Lcom/deltaid/cameratest/CameraTestMainActivity;->T:I

    :try_start_0
    new-instance v0, Landroid/media/ToneGenerator;

    const/4 v1, 0x5

    const/16 v2, 0x64

    invoke-direct {v0, v1, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    sput-object v0, Lcom/deltaid/cameratest/CameraTestMainActivity;->O:Landroid/media/ToneGenerator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v0, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/deltaid/cameratest/CameraTestMainActivity;->P:Ljava/lang/String;

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->x:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->y:[I

    iput-object v2, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->z:Landroid/graphics/Paint;

    iput-object v2, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->A:Landroid/graphics/Paint;

    iput-object v2, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->B:Landroid/graphics/Paint;

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->C:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->D:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->E:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->F:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->G:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->H:[I

    iput-boolean v1, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->I:Z

    iput-boolean v3, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->J:Z

    iput-boolean v3, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->K:Z

    iput-boolean v3, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->M:Z

    iput-boolean v3, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->Q:Z

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->R:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->S:Landroid/graphics/Paint;

    iput-object v2, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->N:Ljava/io/PrintStream;

    return-void
.end method

.method public static a(Ljava/io/Reader;)Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v0, 0x1000

    new-array v2, v0, [C

    invoke-virtual {p0, v2}, Ljava/io/Reader;->read([C)I

    move-result v0

    :goto_0
    if-ltz v0, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/io/Reader;->read([C)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(II)V
    .locals 3

    const v0, 0x7f070004

    invoke-virtual {p0, v0}, Lcom/deltaid/cameratest/CameraTestMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/deltaid/cameratest/CameraView;

    iput-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->a:Lcom/deltaid/cameratest/CameraView;

    const v0, 0x7f070003

    invoke-virtual {p0, v0}, Lcom/deltaid/cameratest/CameraTestMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/deltaid/cameratest/TouchSurfaceView;

    iput-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->b:Lcom/deltaid/cameratest/TouchSurfaceView;

    const-string v0, "onMEasure"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CTRLS height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->b:Lcom/deltaid/cameratest/TouchSurfaceView;

    iget-object v1, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/deltaid/cameratest/TouchSurfaceView;->setCtrlsContainer(Landroid/widget/LinearLayout;)V

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->b:Lcom/deltaid/cameratest/TouchSurfaceView;

    invoke-virtual {v0}, Lcom/deltaid/cameratest/TouchSurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/deltaid/cameratest/CameraTestMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/2addr v2, p2

    div-int/2addr v2, p1

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->b:Lcom/deltaid/cameratest/TouchSurfaceView;

    invoke-virtual {v1, v0}, Lcom/deltaid/cameratest/TouchSurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private a(Landroid/widget/RadioGroup;)V
    .locals 12

    const/4 v11, -0x1

    const/4 v10, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcom/deltaid/cameratest/CameraTestMainActivity$3;

    invoke-direct {v2, p0}, Lcom/deltaid/cameratest/CameraTestMainActivity$3;-><init>(Lcom/deltaid/cameratest/CameraTestMainActivity;)V

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->r:Lcom/deltaid/iris_demo/IrisMobileDevice;

    invoke-virtual {v0}, Lcom/deltaid/iris_demo/IrisMobileDevice;->getCameraIds()[I

    move-result-object v3

    move v0, v1

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_1

    new-instance v4, Landroid/widget/RadioButton;

    invoke-virtual {p0}, Lcom/deltaid/cameratest/CameraTestMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Camera "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v3, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setTextSize(F)V

    new-instance v5, Landroid/content/res/ColorStateList;

    new-array v6, v10, [[I

    new-array v7, v10, [I

    const v8, 0x101009e

    aput v8, v7, v1

    aput-object v7, v6, v1

    new-array v7, v10, [I

    invoke-virtual {p0}, Lcom/deltaid/cameratest/CameraTestMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f040004

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    aput v8, v7, v1

    invoke-direct {v5, v6, v7}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v4, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v5, Landroid/widget/RadioGroup$LayoutParams;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v5, v11, v11, v6}, Landroid/widget/RadioGroup$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1, v4, v0}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;I)V

    if-nez v0, :cond_0

    invoke-virtual {v4, v10}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v4, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->r:Lcom/deltaid/iris_demo/IrisMobileDevice;

    aget v5, v3, v0

    invoke-virtual {v4, v5}, Lcom/deltaid/iris_demo/IrisMobileDevice;->setCameraIdToOpen(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a([BII)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->N:Ljava/io/PrintStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->N:Ljava/io/PrintStream;

    mul-int v1, p2, p3

    invoke-virtual {v0, p1, v2, v1}, Ljava/io/PrintStream;->write([BII)V

    iget-boolean v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->J:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/deltaid/cameratest/CameraTestMainActivity;->g()V

    iput-boolean v2, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->J:Z

    iput-boolean v2, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->K:Z

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/deltaid/cameratest/CameraTestMainActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->Q:Z

    return v0
.end method

.method static synthetic a(Lcom/deltaid/cameratest/CameraTestMainActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->Q:Z

    return p1
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/deltaid/cameratest/CameraTestMainActivity;->a(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/FileReader;->close()V

    return-object v1
.end method

.method static h()V
    .locals 2

    sget-object v0, Lcom/deltaid/cameratest/CameraTestMainActivity;->O:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/deltaid/cameratest/CameraTestMainActivity;->O:Landroid/media/ToneGenerator;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->startTone(I)Z

    :cond_0
    return-void
.end method

.method private j()V
    .locals 4

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const/16 v1, 0x2d

    const/16 v2, 0x5f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Product Code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.deltaid.devices._"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/hardware/Camera$PreviewCallback;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/deltaid/iris_demo/IrisMobileDevice;

    iput-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->r:Lcom/deltaid/iris_demo/IrisMobileDevice;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->r:Lcom/deltaid/iris_demo/IrisMobileDevice;

    if-nez v0, :cond_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Init Device Failed"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->r:Lcom/deltaid/iris_demo/IrisMobileDevice;

    invoke-virtual {v0}, Lcom/deltaid/iris_demo/IrisMobileDevice;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->s:I

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->r:Lcom/deltaid/iris_demo/IrisMobileDevice;

    invoke-virtual {v0}, Lcom/deltaid/iris_demo/IrisMobileDevice;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->t:I

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->r:Lcom/deltaid/iris_demo/IrisMobileDevice;

    invoke-virtual {v0}, Lcom/deltaid/iris_demo/IrisMobileDevice;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->u:I

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "rotated90"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x5a

    iput v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->u:I

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "rotated180"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xb4

    iput v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->u:I

    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "rotated270"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x10e

    iput v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->u:I

    :cond_3
    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->r:Lcom/deltaid/iris_demo/IrisMobileDevice;

    iget-object v1, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->C:[I

    iget-object v2, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->D:[I

    iget-object v3, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->E:[I

    invoke-virtual {v0, v1, v2, v3}, Lcom/deltaid/iris_demo/IrisMobileDevice;->getExposureSetting([I[I[I)V

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->r:Lcom/deltaid/iris_demo/IrisMobileDevice;

    iget-object v1, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->F:[I

    iget-object v2, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->G:[I

    iget-object v3, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->H:[I

    invoke-virtual {v0, v1, v2, v3}, Lcom/deltaid/iris_demo/IrisMobileDevice;->getGainSetting([I[I[I)V

    goto :goto_1
.end method

.method private static k()Ljava/lang/String;
    .locals 1

    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    invoke-virtual {v0}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method a(I)I
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->D:[I

    aget v0, v0, v2

    iget-object v1, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->C:[I

    aget v1, v1, v2

    sub-int/2addr v0, v1

    mul-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x64

    iget-object v1, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->C:[I

    aget v1, v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method a()V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/deltaid/cameratest/CameraTestMainActivity;->a(Z)V

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->o:Landroid/widget/Button;

    const-string v1, "Stop Camera"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->o:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/deltaid/cameratest/CameraTestMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1060016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->b:Lcom/deltaid/cameratest/TouchSurfaceView;

    invoke-virtual {v0, v3}, Lcom/deltaid/cameratest/TouchSurfaceView;->setVisibility(I)V

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->a:Lcom/deltaid/cameratest/CameraView;

    invoke-virtual {v0, v3}, Lcom/deltaid/cameratest/CameraView;->setVisibility(I)V

    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/deltaid/cameratest/CameraTestMainActivity;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".raw"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/io/PrintStream;

    invoke-direct {v1, v0}, Ljava/io/PrintStream;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->N:Ljava/io/PrintStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->c:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->m:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->n:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public a([BI)V
    .locals 12

    iget v3, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->s:I

    iget v7, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->t:I

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->y:[I

    if-nez v0, :cond_0

    mul-int v0, v3, v7

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->y:[I

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->y:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    const/16 v1, 0x5a

    if-le p2, v1, :cond_1

    iget-object v1, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->y:[I

    array-length v1, v1

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_1
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    iget-object v2, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->y:[I

    shl-int/lit8 v4, v1, 0x8

    or-int/2addr v4, v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v1, v4

    const/high16 v4, -0x1000000

    or-int/2addr v1, v4

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->b:Lcom/deltaid/cameratest/TouchSurfaceView;

    invoke-virtual {v0}, Lcom/deltaid/cameratest/TouchSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v10

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v10}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    if-eqz v0, :cond_8

    const/16 v1, 0x5a

    if-ne p2, v1, :cond_4

    :try_start_1
    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    int-to-float v2, v3

    div-float/2addr v1, v2

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v2, v4

    int-to-float v4, v3

    div-float/2addr v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int v1, v3

    int-to-float v1, v1

    neg-int v2, v7

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    :goto_2
    iget-object v1, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->B:Landroid/graphics/Paint;

    if-nez v1, :cond_3

    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->B:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->B:Landroid/graphics/Paint;

    const v2, -0xbf2f01

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->B:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->B:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_3
    iget-object v1, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->b:Lcom/deltaid/cameratest/TouchSurfaceView;

    iget-object v1, v1, Lcom/deltaid/cameratest/TouchSurfaceView;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v1, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->y:[I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->B:Landroid/graphics/Paint;

    move v6, v3

    invoke-virtual/range {v0 .. v9}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->b:Lcom/deltaid/cameratest/TouchSurfaceView;

    invoke-virtual {v1}, Lcom/deltaid/cameratest/TouchSurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    iget-boolean v1, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->Q:Z

    if-eqz v1, :cond_8

    iget v1, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->s:I

    div-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->v:I

    iget v1, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->t:I

    div-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->w:I

    iget v1, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->s:I

    div-int/lit8 v7, v1, 0x1e

    iget v1, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->t:I

    div-int/lit8 v8, v1, 0x1e

    const/4 v1, 0x0

    move v6, v1

    :goto_3
    if-ge v6, v7, :cond_6

    int-to-float v1, v6

    const/high16 v2, 0x41f00000    # 30.0f

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    int-to-float v3, v6

    const/high16 v4, 0x41f00000    # 30.0f

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->t:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->S:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    int-to-float v2, v3

    div-float/2addr v1, v2

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v2, v4

    int-to-float v4, v7

    div-float/2addr v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    neg-int v1, v3

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    :goto_4
    if-eqz v1, :cond_5

    invoke-interface {v10, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_5
    throw v0

    :cond_6
    const/4 v1, 0x0

    move v6, v1

    :goto_5
    if-ge v6, v8, :cond_7

    const/4 v1, 0x0

    int-to-float v2, v6

    const/high16 v3, 0x41f00000    # 30.0f

    mul-float/2addr v2, v3

    :try_start_2
    iget v3, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->s:I

    int-to-float v3, v3

    int-to-float v4, v6

    const/high16 v5, 0x41f00000    # 30.0f

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->S:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_5

    :cond_7
    const/4 v1, 0x0

    iget v2, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->t:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->s:I

    int-to-float v3, v3

    iget v4, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->t:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget-object v5, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->R:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v1, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->s:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    const/4 v2, 0x0

    iget v3, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->s:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->t:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->R:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_8
    if-eqz v0, :cond_9

    invoke-interface {v10, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_9
    return-void

    :catchall_1
    move-exception v0

    goto :goto_4
.end method

.method b(I)I
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->G:[I

    aget v0, v0, v2

    iget-object v1, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->F:[I

    aget v1, v1, v2

    sub-int/2addr v0, v1

    mul-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x64

    iget-object v1, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->F:[I

    aget v1, v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method b()V
    .locals 4

    const/4 v3, 0x4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/deltaid/cameratest/CameraTestMainActivity;->a(Z)V

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->o:Landroid/widget/Button;

    const-string v1, "Start Camera"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->o:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/deltaid/cameratest/CameraTestMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1060012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->b:Lcom/deltaid/cameratest/TouchSurfaceView;

    invoke-virtual {v0, v3}, Lcom/deltaid/cameratest/TouchSurfaceView;->setVisibility(I)V

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->a:Lcom/deltaid/cameratest/CameraView;

    invoke-virtual {v0, v3}, Lcom/deltaid/cameratest/CameraView;->setVisibility(I)V

    return-void
.end method

.method c()V
    .locals 4

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->p:Landroid/widget/Button;

    const-string v1, "Stop Vibrator"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->p:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/deltaid/cameratest/CameraTestMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1060016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->L:Landroid/os/Vibrator;

    const-wide/32 v2, 0x57e40

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    return-void
.end method

.method d()V
    .locals 3

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->p:Landroid/widget/Button;

    const-string v1, "Start Vibrator"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->p:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/deltaid/cameratest/CameraTestMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1060012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->L:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    return-void
.end method

.method e()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->D:[I

    aget v1, v1, v0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->C:[I

    aget v1, v1, v0

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->E:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->C:[I

    aget v2, v2, v0

    sub-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x64

    iget-object v2, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->D:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->C:[I

    aget v0, v3, v0

    sub-int v0, v2, v0

    div-int v0, v1, v0

    goto :goto_0
.end method

.method f()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->G:[I

    aget v1, v1, v0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->F:[I

    aget v1, v1, v0

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->H:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->F:[I

    aget v2, v2, v0

    sub-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x64

    iget-object v2, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->G:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->F:[I

    aget v0, v3, v0

    sub-int v0, v2, v0

    div-int v0, v1, v0

    goto :goto_0
.end method

.method g()V
    .locals 1

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->N:Ljava/io/PrintStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->N:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->N:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->N:Ljava/io/PrintStream;

    invoke-static {}, Lcom/deltaid/cameratest/CameraTestMainActivity;->h()V

    :cond_0
    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 4

    const-string v1, ""

    const-string v0, ""

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "cat /sys/class/net/wlan0/address "

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance v2, Ljava/io/LineNumberReader;

    invoke-direct {v2, v3}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v2}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    :try_start_1
    const-string v1, "/sys/class/net/eth0/address"

    invoke-static {v1}, Lcom/deltaid/cameratest/CameraTestMainActivity;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x11

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :cond_3
    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/16 v4, 0x64

    const/16 v3, 0xa

    const/4 v7, 0x1

    const/16 v6, 0x8

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lcom/deltaid/cameratest/CameraTestMainActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/deltaid/cameratest/CameraTestMainActivity;->j()V

    const v0, 0x7f070005

    invoke-virtual {p0, v0}, Lcom/deltaid/cameratest/CameraTestMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->l:Landroid/widget/LinearLayout;

    iget v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->s:I

    iget v1, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->t:I

    invoke-direct {p0, v0, v1}, Lcom/deltaid/cameratest/CameraTestMainActivity;->a(II)V

    invoke-virtual {p0}, Lcom/deltaid/cameratest/CameraTestMainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const v0, 0x7f070014

    invoke-virtual {p0, v0}, Lcom/deltaid/cameratest/CameraTestMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->o:Landroid/widget/Button;

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->o:Landroid/widget/Button;

    new-instance v1, Lcom/deltaid/cameratest/CameraTestMainActivity$1;

    invoke-direct {v1, p0}, Lcom/deltaid/cameratest/CameraTestMainActivity$1;-><init>(Lcom/deltaid/cameratest/CameraTestMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f07000c

    invoke-virtual {p0, v0}, Lcom/deltaid/cameratest/CameraTestMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->c:Landroid/widget/SeekBar;

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->c:Landroid/widget/SeekBar;

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->c:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->incrementProgressBy(I)V

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->c:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/deltaid/cameratest/CameraTestMainActivity;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    new-instance v0, Lcom/deltaid/cameratest/CameraTestMainActivity$4;

    invoke-direct {v0, p0}, Lcom/deltaid/cameratest/CameraTestMainActivity$4;-><init>(Lcom/deltaid/cameratest/CameraTestMainActivity;)V

    iput-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->i:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->c:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->i:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const v0, 0x7f070009

    invoke-virtual {p0, v0}, Lcom/deltaid/cameratest/CameraTestMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->C:[I

    aget v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f07000b

    invoke-virtual {p0, v0}, Lcom/deltaid/cameratest/CameraTestMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->D:[I

    aget v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f07000a

    invoke-virtual {p0, v0}, Lcom/deltaid/cameratest/CameraTestMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->e:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->e:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->E:[I

    aget v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/deltaid/cameratest/CameraTestMainActivity$5;

    invoke-direct {v0, p0}, Lcom/deltaid/cameratest/CameraTestMainActivity$5;-><init>(Lcom/deltaid/cameratest/CameraTestMainActivity;)V

    iput-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->g:Landroid/text/TextWatcher;

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->e:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->g:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->D:[I

    aget v0, v0, v5

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->c:Landroid/widget/SeekBar;

    invoke-virtual {v0, v5}, Landroid/widget/SeekBar;->setEnabled(Z)V

    :cond_0
    const v0, 0x7f07000d

    invoke-virtual {p0, v0}, Lcom/deltaid/cameratest/CameraTestMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f070012

    invoke-virtual {p0, v1}, Lcom/deltaid/cameratest/CameraTestMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->d:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->d:Landroid/widget/SeekBar;

    invoke-virtual {v1, v4}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v1, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->d:Landroid/widget/SeekBar;

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->incrementProgressBy(I)V

    iget-object v1, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->d:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/deltaid/cameratest/CameraTestMainActivity;->f()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    new-instance v1, Lcom/deltaid/cameratest/CameraTestMainActivity$6;

    invoke-direct {v1, p0}, Lcom/deltaid/cameratest/CameraTestMainActivity$6;-><init>(Lcom/deltaid/cameratest/CameraTestMainActivity;)V

    iput-object v1, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->j:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    iget-object v1, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->d:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->j:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const v1, 0x7f07000e

    invoke-virtual {p0, v1}, Lcom/deltaid/cameratest/CameraTestMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const v2, 0x7f07000f

    invoke-virtual {p0, v2}, Lcom/deltaid/cameratest/CameraTestMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->F:[I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f070011

    invoke-virtual {p0, v2}, Lcom/deltaid/cameratest/CameraTestMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->G:[I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/deltaid/cameratest/CameraTestMainActivity$7;

    invoke-direct {v2, p0}, Lcom/deltaid/cameratest/CameraTestMainActivity$7;-><init>(Lcom/deltaid/cameratest/CameraTestMainActivity;)V

    iput-object v2, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->k:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    const v2, 0x7f070010

    invoke-virtual {p0, v2}, Lcom/deltaid/cameratest/CameraTestMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->f:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->f:Landroid/widget/EditText;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->H:[I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/deltaid/cameratest/CameraTestMainActivity$8;

    invoke-direct {v2, p0}, Lcom/deltaid/cameratest/CameraTestMainActivity$8;-><init>(Lcom/deltaid/cameratest/CameraTestMainActivity;)V

    iput-object v2, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->h:Landroid/text/TextWatcher;

    iget-object v2, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->f:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->h:Landroid/text/TextWatcher;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v2, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->G:[I

    aget v2, v2, v5

    if-nez v2, :cond_1

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->d:Landroid/widget/SeekBar;

    invoke-virtual {v0, v6}, Landroid/widget/SeekBar;->setVisibility(I)V

    :cond_1
    const v0, 0x7f070015

    invoke-virtual {p0, v0}, Lcom/deltaid/cameratest/CameraTestMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->m:Landroid/widget/Button;

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->m:Landroid/widget/Button;

    new-instance v1, Lcom/deltaid/cameratest/CameraTestMainActivity$9;

    invoke-direct {v1, p0}, Lcom/deltaid/cameratest/CameraTestMainActivity$9;-><init>(Lcom/deltaid/cameratest/CameraTestMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f070016

    invoke-virtual {p0, v0}, Lcom/deltaid/cameratest/CameraTestMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->n:Landroid/widget/Button;

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->n:Landroid/widget/Button;

    new-instance v1, Lcom/deltaid/cameratest/CameraTestMainActivity$10;

    invoke-direct {v1, p0}, Lcom/deltaid/cameratest/CameraTestMainActivity$10;-><init>(Lcom/deltaid/cameratest/CameraTestMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f070019

    invoke-virtual {p0, v0}, Lcom/deltaid/cameratest/CameraTestMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->q:Landroid/widget/Button;

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->q:Landroid/widget/Button;

    new-instance v1, Lcom/deltaid/cameratest/CameraTestMainActivity$11;

    invoke-direct {v1, p0}, Lcom/deltaid/cameratest/CameraTestMainActivity$11;-><init>(Lcom/deltaid/cameratest/CameraTestMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/deltaid/cameratest/CameraTestMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->L:Landroid/os/Vibrator;

    const v0, 0x7f070018

    invoke-virtual {p0, v0}, Lcom/deltaid/cameratest/CameraTestMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->p:Landroid/widget/Button;

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->p:Landroid/widget/Button;

    new-instance v1, Lcom/deltaid/cameratest/CameraTestMainActivity$2;

    invoke-direct {v1, p0}, Lcom/deltaid/cameratest/CameraTestMainActivity$2;-><init>(Lcom/deltaid/cameratest/CameraTestMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->a:Lcom/deltaid/cameratest/CameraView;

    iget-object v1, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->r:Lcom/deltaid/iris_demo/IrisMobileDevice;

    invoke-virtual {v0, v1}, Lcom/deltaid/cameratest/CameraView;->setCallback(Landroid/view/SurfaceHolder$Callback;)V

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->r:Lcom/deltaid/iris_demo/IrisMobileDevice;

    invoke-virtual {v0}, Lcom/deltaid/iris_demo/IrisMobileDevice;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v7}, Lcom/deltaid/cameratest/CameraTestMainActivity;->setRequestedOrientation(I)V

    :goto_0
    const v0, 0x7f070006

    invoke-virtual {p0, v0}, Lcom/deltaid/cameratest/CameraTestMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->r:Lcom/deltaid/iris_demo/IrisMobileDevice;

    invoke-virtual {v1}, Lcom/deltaid/iris_demo/IrisMobileDevice;->getCameraIds()[I

    move-result-object v1

    array-length v1, v1

    if-le v1, v7, :cond_3

    invoke-direct {p0, v0}, Lcom/deltaid/cameratest/CameraTestMainActivity;->a(Landroid/widget/RadioGroup;)V

    :goto_1
    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->R:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->S:Landroid/graphics/Paint;

    sget v1, Lcom/deltaid/cameratest/CameraTestMainActivity;->T:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->S:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->S:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->S:Landroid/graphics/Paint;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void

    :cond_2
    invoke-virtual {p0, v5}, Lcom/deltaid/cameratest/CameraTestMainActivity;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v6}, Landroid/widget/RadioGroup;->setVisibility(I)V

    goto :goto_1
.end method

.method public onPause()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-boolean v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->M:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->M:Z

    invoke-virtual {p0}, Lcom/deltaid/cameratest/CameraTestMainActivity;->d()V

    :cond_0
    iget-boolean v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->I:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->I:Z

    invoke-virtual {p0}, Lcom/deltaid/cameratest/CameraTestMainActivity;->b()V

    :cond_1
    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 2

    iget v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->u:I

    invoke-virtual {p0, p1, v0}, Lcom/deltaid/cameratest/CameraTestMainActivity;->a([BI)V

    iget-boolean v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->K:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->s:I

    iget v1, p0, Lcom/deltaid/cameratest/CameraTestMainActivity;->t:I

    invoke-direct {p0, p1, v0, v1}, Lcom/deltaid/cameratest/CameraTestMainActivity;->a([BII)V

    :cond_0
    invoke-virtual {p2, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method
